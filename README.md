# News & Product Updates section for weekly email reports

## Prerequisites
    sudo npm install -g markdown
    sudo apt-get install xsltproc

Each update is a file called `[mmm]-[dd]-[yyyy].md` in the `updates` directory.

To generate an update HTML fragment, run

    ./render updates/<file>.md

The resulting file is update-fragment.html

To preview, open update.html
