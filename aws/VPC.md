# VPC (virtual private cloud)
독립된 가상의 네트워크입니다.

IP 대역, 인터페이스, 서브넷, 라우팅 테이블, 인터넷 게이트웨이, 보안 그룹, 네트워크 ACL 등을 적용해 private한 네트워크를 구성할 수 있습니다.

# VPC의 특징 
- 확장성 
    - 손쉽게 VPC를 생성 및 수정, 삭제가 가능하며, 설정 및 관리가 편리합니다.
- 보안 
    - instance 레벨과 subnet 레벨에서 inbound, outbound 필터링 및 security group, 네트워크 ACL을 제공하여 보안을 강화할 수 있습니다.
- 사용자 중심 
    - 사용자가 원하는대로 VPC 내부의 resource를 손쉽게 제어할 수 있으며, 네트워크 지표 및 모니터링 툴을 활용해 가시성을 제공합니다.

## Default VPC
리전별로 1개씩 생성이 되어있는 VPC로 AWS 리소스가 생성 될때 VPC를 지정하지 않으면 기본적으로 설정되는 VPC입니다.

## Custom VPC
사용자가 정의한 custom한 VPC입니다. 

리전별로 최대 5개까지 생성이 가능합니다.

# IP (Internet Protocol)
인터넷상의 고유한 주소입니다.

IP 주소에 따라 IPv4, IPv6로 구분되나 아직까지는 IPv4를 많이 사용합니다.

## public IP
실제 인터넷 구간으로 통신하는 공공 네트워크이며, 누구나 접근이 가능합니다.

ISP에서 제공하는 IP주소이며, public IP는 전 세계 인터넷 구간에서 유일한 주소를 가집니다.

## private IP
독립된 네트워크에서 사용되는 IP주소로써, private 네트워크 관리자에 의해 할당되며, 독립된 네트워크 상에서 고유한 주소를 가집니다.

private IP는 물론 public IP구간과 통신이 불가능합니다.

## Subnet
부분적인 네트워크를 의미합니다.

거대한 네트워크 망에서 서브넷을 통해 부분적인 네트워크망으로 구분이되고, 서브넷을 통해 서로간의 네트워크가 연결됩니다.

분리된 서브넷끼리 구분하기 위해 사용되는것이 서브넷 마스크입니다.

서브넷 마스크는 IP주소 + 네트워크 ID와 호스트 ID를 구분하는 기준값입니다.

네트워크 ID는 서브넷을 식별하는 영역이며, 호스트 ID는 서브넷에서 대상을 식별하는 값입니다.

AWS의 VPC에도 서브넷을 이용해 부분적으로 네트워크 구분이 가능합니다.

대신 서브넷의 IP대역은 VPC의 IP 대역에 속해있어야 하며, 서브넷은 1개의 AZ에 속해야 합니다.

AWS에서는 서브넷에 할당할 수 있는 IP 대역에서 사전에 준비된 IP 주소가 있으며, 사전에 준비된 IP 주소에는 다른 resource를 할당 할 수 없습니다.

이 사전에 준비된 IP 대역은 아래와 같습니다.
- 네트워크 주소 (첫번째)
- AWS VPC 가상 라우터 주소 (두번째) 
- AWS DNS 서버 주소 (세번째)
- 향후 새롭게 사용할 주소 (네번째)
- 네트워크 브로드캐스트 주소 (마지막)

### public Subnet 
외부 인터넷과 직접적으로 통신할 수 있는 subnet입니다.

public IP를 가지고 인터넷 게이트웨이를 통해 public internet과 통신합니다.

### private subnet 
외부 인터넷과 직접적으로 통신 할 수 없으며, 내부 네트워크끼리만 통신이 가능한 subnet입니다.

private IP만 가지고 있습니다.

## DHCP (Dynamic Host Configuration Protocol)
동적으로 IP주소를 할당하는 protocol 입니다.

동적으로 IP주소를 할당하기 때문에 언제나 고정은 아니며, IP를 할당한 시간이 존재하며, 만료되면 새로운 IP로 갱신됩니다.

DHCP는 중앙집중형 서버/클라이언트로 동작하며, IP 주소를 요청하는 클라이언트가 DHCP 서버에게 IP 주소를 요청하는 방식입니다.

## DNS (Domain Name System)
도메인 네임을 제공하기 위한 기술로, 도메인을 이용하여 IP 주소를 찾게 해주는 시스템입니다.

## Routing
네트워크 통신을 수행할 때 거쳐 가야하는 경로를 찾아주는 핵심적인 기능을 담당합니다.

여러개의 서브넷으로 이루어진 네트워크망에서 목적지 IP로 Request를 전달할 경로를 설정하는 역할을 담당합니다.

### virtual Routing, virtual Routing table 
VPC를 생성할때 자동으로 가상 라우터가 생성됩니다.

자동으로 생성된 가상 라우터는 VPC내에 생성된 서브넷으로 request를 전달하는 라우팅 테이블을 가집니다.

virtual routing은 VPC 내부의 subnet끼리의 통신을 가능하게 해줍니다.

즉 서브넷별로 라우팅 테이블에 매핑시켜줍니다. 

## internet gateway
VPC와 public 인터넷간의 논리적인 연결입니다.

public 인터넷에서 VPC 내부의 resource에 접근할때 필요한 resource입니다.

인터넷 게이트웨이는 VPC당 1개만 적용이 가능하며, 인터넷 게이트 웨이를 통해 public 인터넷과 통신을 하려면 퍼블릭 IP를 사용하는 subnet만 가능합니다. 이때 public subnet은 라우팅 테이블에 egress로 인터넷 게이트 웨이를 지정해야 합니다.

## NAT Gateway
internet gateway와 비슷한 역할을 담당하지만 IP주소를 변환해 주는 기술입니다.

public IP를 통한 요청에서 private IP를 public IP로 변환하는 기능을 담당합니다.

즉 private한 subnet에서 외부 인터넷 통신을 할때 private IP를 public IP로 변환합니다.

## 보안 
VPC는 인스턴스 레벨에서는 security group, 네트워크 레벨에서는 ACL을 이용해 보안을 강화 할 수 있습니다.


