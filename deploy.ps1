param (
    [string]$msg = ""
)

Write-Output "Deploying updates to GitHub..."
hugo -t axiom

git add -A

if ($msg) {
    $outmsg = $msg
} else {
    $date = Get-Date -UFormat "%D %R"
    $outmsg = "Rebuilding site on $date."
}
git commit -m "$outmsg"

git push origin master
git subtree push --prefix=public https://github.com/axiomabsolute/axiomabsolute.github.io.git gh-pages
