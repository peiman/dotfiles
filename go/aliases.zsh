# Gotags this source directory
function gotagsthis() {
  gotags -tag-relative=true -R=true -sort=true -f="tags" -fields=+l .;
}
