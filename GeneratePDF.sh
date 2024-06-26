#!/bin/sh

docker run --rm \
--volume "$(pwd):/data" \
--user $(id -u):$(id -g) \
gitlab.tekniker.es:5001/aut/personal/jgsaenz/pandoc-tekniker-pdf-template-dockerimage/pandoc-tekniker-template:latest \
README.md \
-o LTS_103_Validation.pdf \
--metadata=title:'LTS - 103 Validation for MCS' \
--metadata=subtitle:$1 \
--metadata=author:'Julen Garcia' \
--metadata=date:$2 \
--metadata=lang:'en-EN' \
--template eisvogel \
--filter pandoc-plantuml \
--listings \
--number-sections \
--table-of-contents \
--toc-depth=3 \
--top-level-division=chapter \
--variable=colorlinks:true \
--variable=fontsize:12pt \
--variable=titlepage:true \
--variable=toc-own-page:true \
--variable=listings-no-page-break:false \
--variable=listings-disable-line-numbers:true \
--variable=classoption:oneside \
--variable=book:true \
--variable=page-background:'/resources/page_background.pdf' \
--variable=titlepage-color:'FFFFFF' \
--variable=page-background-opacity:'1' \
--variable=titlepage-background:'/resources/title_page_background.pdf' \
--variable=titlepage-rule-height:'-1' \
--variable=titlepage-text-color:'3C3C3C' \
--variable=header-center:'\thetitle' \
--variable=header-left:'\hspace{1cm}' \
--variable=header-right:'\hspace{1cm}' \
--variable=footer-left:'\thedate' \
--variable=footer-right:'Page \thepage' \
--variable=footer-center:''