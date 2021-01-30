#!/usr/bin/env bash
FILES=*.html
for f in $FILES
do
    echo "Processing $f"
    base=${f//.html/}

    # split .html into an empty file, a .yaml and an .htm
    csplit \
        --prefix="$base." \
        --suppress-matched \
        -q \
        "$base.html" \
        '/---/' '{1}'
    rm $base.00 # empty file
    mv $base.01 $base.yaml
    mv $base.02 $base.htm

    # Set metadata author=tartley
    python3 -c "
import yaml
with open(\"$base.yaml\", 'r') as stream:
    data = yaml.load(stream, Loader=yaml.FullLoader)
data['author'] = 'ejk'
with open(\"$base.yaml\", 'w') as stream:
    stream.write(yaml.dump(data, explicit_start=True, explicit_end=True))
"

    # convert html to markdown (.content)
    pandoc --wrap=none --from html --to markdown-smart $base.htm -o $base.content
    rm $base.htm

    # concat .yaml and .content into .md
    cat $base.yaml $base.content >$base.md
    rm $base.yaml $base.content

    # remove original html file
    rm $base.html
done
