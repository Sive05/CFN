#$ErrorActionPreference = "Stop"

$name = "VpcFromCfn"
$templatebody = get-content cfn.yml -Raw

if (Get-CFNStack -StackName $name){
update-CFNStack -StackName $name -TemplateBody $templatebody
}
else{

New-CFNStack -StackName $name -TemplateBody $templatebody
}
