#!/bin/bash

rm -rf slides
source venv/bin/activate
quarto render --to revealjs
cp -R _site slides
quarto render --to html
rm -rf _site/slides
cp -Rf slides _site/slides
rm -rf slides
