#!/bin/bash

cp ./customizations/view.svg ./themes/hugo-book/static/svg/
cp ./customizations/footer.html ./themes/hugo-book/layouts/partials/docs/

hugo server
