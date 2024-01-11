$ErrorActionPreference = "Continue"

$name = "VpcFromCfn"
$templatebody = get-content cfn.yml -Raw

#if (get-CFNStack -stackname $name){
#    update-CFNStack -StackName $name -TemplateBody $templatebody
#} else {
    New-CFNStack -StackName $name -TemplateBody $templatebody
#}
