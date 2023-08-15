$ErrorActionPreference = "Stop"

$name = "VpcFromCfn"
$templatebody = get-content cfn.yml -Raw

New-CFNStack -StackName $name -TemplateBody $templatebody
