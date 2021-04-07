# VPC Endpoint
VPC에서 외부 public 서비스와 통신을 해야하는 경우, 다른 VPC로 통신하려는 경우에 필요한 개념입니다.

private subnet에서도 외부와 통신하기 위해 사용하는것이 VPC Endpoint입니다.

AWS Resource에 접근해야할 때 외부 public망이 아닌 VPC 내부에서 접근해야 할때 

internet gateway, nat gateway를 통해 외부로 통신하는 방법이 아닌 VPC Endpoint 기능을 이용해 private 연결이 가능합니다.

VPC Endpoint는 endpoint와 endpoint service로 나뉠 수 있는데 

endpoint는 AWS public Service에 접근하며, endpoint service는 직접 생성한 resource에 연결한다는 차이점이 있습니다.

endpoint는 S3와 DynamoDB에 접근할때는 gateway endpoint 유형으로 구분되며, 나머지 AWS resource에 접근할 때는 interface endpoint로 구분됩니다.

