# Terraform introduce & install 
Mac OS를 기준으로 terraform 설치 및 환경 설정에 대한 방법을 정리하였습니다.

## install
- homebrew를 이용한 설치는 `brew install terraform`를 이용해 편리하게 설치가 가능합니다.

``` 
$ terraform version

Terraform v0.14.0
```

## Provider 
- Intra structor를 선언하기 위한 도구를 `Provider`라고 지칭한다.
- 대표적으로 AWS, Azure, GCP등이 있습니다.

### AWS Provider 
```
provider "aws" {
  access_key = "<AWS_ACCESS_KEY>"
  secret_key = "<AWS_SECRET_KEY>"
  region = "<AWS_REGION>"
}
```

- AWS에 접근하기 위한 access_key와 secret_key, region이 필요합니다.
코드로 작성되기 때문에 access_key와 secret_key가 버전 관리 시스템에 직접 기록되는건 매우 조심해야 할 일입니다.

이러한 경우에 Code에 직접 적용하는 방법 이외로 환경 변수로 관리하는 방법이 존재합니다.
```
$ export AWS_ACCESS_KEY_ID="<AWS_ACCESS_KEY_ID>"
$ export AWS_SECRET_ACCESS_KEY="<AWS_SECRET_ACCESS_KEY>"
$ export AWS_DEFAULT_REGION="<AWS_REGION>"
```

## terraform init 
- terraform을 이용해 infra structor를 관리하기 위해서는 project 초기화가 필요합니다.
```
$ terraform init 

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v3.34.0...
- Installed hashicorp/aws v3.34.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!
```

- terraform init을 실행하게되면 provider의 정보를 참조해 provider plugin을 설치합니다.
```
$ terraform version
Terraform v0.14.0
+ provider registry.terraform.io/hashicorp/aws v3.34.0
```
- terraform project를 초기화한다면 provider의 정보도 같이 출력이 됩니다.
