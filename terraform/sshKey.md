# SSH KEY

AWS EC2를 생성하기 전에 `SSH KEY`가 먼저 필요합니다.

SSH KEY도 terraform으로 작성 가능합니다.

SSH KEY를 설정하는 구문은 아래와 같습니다.
```
resource "aws_key_pair" "<RESOURCE_NAME>" {
  key_name   = "<KEY_NAME>"
  key_name_prefix = "<KEY_NAME_PREFIX>"
  public_key = "<PUBLIC_KEY>"
  tag = "<TAG>"
}
```

terraform의 추가적인 argument는 아래와 같습니다.
| filed | description | Required |
|---|:---:|---:|
| key_name | key pair의 이름 | X |
| key_name_prefix | 지정한 prefix로 unique한 key name을 생성합니다. `key_name`과 충돌이 날 수 있으니 동시에 사용하면 안됩니다. | X |
| public_key | key pair를 생성할 public key | O |
| tag | key-value의 tag | X |


