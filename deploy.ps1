param (
    [string]$msg = ""
)

Write-Output "Deploying updates to GitHub..."
hugo -t axiom

cd public
git add -A

if ($msg) {
    $outmsg = $msg
} else {
    $date = Get-Date -UFormat "%D %R"
    $outmsg = "Rebuilding site on $date."
}
git commit -m "$outmsg"

git push origin master
cd ..
