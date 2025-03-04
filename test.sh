#!/bin/bash

cp ./customizations/view.svg ./themes/hugo-book/static/svg/
cp ./customizations/footer.html ./themes/hugo-book/layouts/partials/docs/
cp ./customizations/fonts/* ./themes/hugo-book/static/fonts/
cp ./customizations/_fonts.scss ./themes/hugo-book/assets/

hugo server
