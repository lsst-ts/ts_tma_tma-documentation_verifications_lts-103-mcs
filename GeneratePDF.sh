#!/bin/sh

docker run --rm \
--volume "$(pwd):/data" \
--user $(id -u):$(id -g) \
gitlab.tekniker.es:5001/aut/personal/jgsaenz/pandoc-tekniker-pdf-template-dockerimage/pandoc-tekniker-template:latest \
README.md \
-o LTS_103_Validation.pdf
