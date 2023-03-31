#!/bin/bash

echo "Removing previous slides"
rm -rf slides
echo "Loading virtual environment"
source venv/bin/activate
echo "Rendering Quarto slides"
quarto render --to revealjs
echo "Copying slides into a separate folder"
cp -R _site slides
echo "Rendering Quarto website"
quarto render --to html
echo "Removing slides folder from the website"
rm -rf _site/slides
echo "Copying slides into the website"
cp -Rf slides _site/slides
echo "Removing slides original copy"
rm -rf slides
