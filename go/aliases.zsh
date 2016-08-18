# Gotags this source directory
function gotagsthis() {
  gotags -tag-relative=true -R=true -sort=true -f="tags" -fields=+l .;
}


alias go-list-deps="go list -f '{{join .Imports \"\n\"}}' | xargs go list -f '{{if not .Standard}}{{.ImportPath}}{{end}}'"

alias go-list-deps-all="go list -f '{{join .Deps \"\n\"}}' | xargs go list -f '{{if not .Standard}}{{.ImportPath}}{{end}}'"
