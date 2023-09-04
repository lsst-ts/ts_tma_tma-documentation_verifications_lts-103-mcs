#!/bin/sh

docker run --rm \
--volume "$(pwd):/data" \
--user $(id -u):$(id -g) \
gitlab.tekniker.es:5001/aut/personal/jgsaenz/pandoc-tekniker-pdf-template-dockerimage/pandoc-tekniker-template:latest \
README.md \
-o LTS_103_Validation.pdf \
--metadata=title:'LTS - 103 Validation for MCS' \
--metadata=subtitle: "$1" \
--metadata=author:'Julen Garcia' \
--metadata=date: "$2" \
--metadata=lang:'en-EN'
