$ErrorActionPreference = "stop"

$name = "VpcFromCfn"
$templatebody = get-content cfn.yml -Raw

if (get-CFNStack -stackname $name -ErrorAction SilentlyContinue){
   update-CFNStack -StackName $name -TemplateBody $templatebody
} else {
    New-CFNStack -StackName $name -TemplateBody $templatebody
}
