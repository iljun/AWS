# AWS Introduce

## AWS는 크게 4가지 영역으로 구분이 가능합니다.
    데이터 센터 -> 가용 영역 -> 리젠(엣지) -> 글로벌 인프라

### 가용 영역(AZ)
- 한개 이상의 데이터 센터들의 모음을 의미합니다.
- 각 테이터 센터는 분산되어 있으며, 초고속 광통신 전용망으로 연결되어 있습니다.

### 리전(Region)
- 지리적인 영역 내에서 격리되고 물리적으로 분리된 여러 개의 AZ를 의미합니다.
- 리전은 최소 2개 이상의 AZ로 구성되며, 최대 6개의 가용 영역으로 구성됩니다.
- 물리적인 재난이나 재해로 서비스 이용이 불가능할 수 있으니, AZ를 분산하여 구성하는 것을 권장합니다.

### 엣지(Edge)
- public internet과 AWS Global Network망을 연결하는 별도의 센터를 의미합니다.
- 엣지 Edge Location과 Regional Edge Cache로 구성됩니다. 

## 컴퓨팅 서비스 

### EC2 (Elastic Compute Cloud)
- 물리 환경의 서버와 유사한 리소스를 제공하는 서비스입니다.
- 가상 머신으로 제공되며, 인스턴스라고 불립니다.

### Auto Scaling
- EC2 인스턴스 조건에 따라 자동으로 서버를 추가하거나 제거하는 서비스 입니다.

### Lambda
- 서버리스 컴퓨팅으로 프로그램을 실행하는 엔진입니다.
- AWS가 전반을 관리하며 사용자는 코드만 배포하면 서비스 실행이 가능합니다.

## 스토리지 서비스

### EBS(Elastic Block Store)
- AZ 내부에서 EC2에 연결되어 사용할 수 있는 Block Storage입니다.
- 필요시에는 Block Storage를 생성하고 연결할 수 있습니다.

### S3(Simple Storage Service)
- Object 기반으로 무제한 파일을 저장할 수 있는 Storage입니다.
- URL을 통해 쉽게 파일 사용이 가능하며, 여러 AZ에 걸려 99.9999%의 내구성을 제공합니다.

## 데이터베이스 서비스 

### Amazon RDS(Relational Database Service)
- 관계형 데이터 베이스를 이용하는 서비스입니다.
- 6개의 데이터베이스 엔진을 사용할 수 있습니다.

### Amazon DynamoDB
- key-value 및 NoSQL 데이터베이스 서비스입니다.
- 대용량 데이터 저장 및 처리가 가능하며, 서버리스 서비스입니다.

## ETC 서비스 

### AWS CloudFormation
- Programming 언어, Text File을 사용하여 AWS Resource를 자동으로 배포 가능하게 해주는 서비스입니다.

### AWS CloudWatch
- AWS Resource, on premise Resource를 모니터링 할 수 있는 서비스입니다. 
- 데이터 수집 및 로그 저장이 가능하며, 알림을 제공할 수 있습니다. 


## 네트워크 서비스 

### AWS VPC(Virtual Private Cloud)
- AWS 내부에 논리적으로 사용자가 정의한 가상 네트워크를 제공합니다

### AWS VPN(Virtual Private Network)
- public Internet을 통해 가상의 private Network를 제공합니다.

### ELB(Elastic Load Balancing)
- AWS에서 제공하는 로드 밸런싱입니다. 

### AWS PrivateLink
- 내부 네트워크를 통해 AWS Service와 on premise Resource간 비공개 연결을 제공합니다.

### AWS Router53 
- AWS에서 제공하는 DNS 서비스입니다. 
- Router 53 Resolver를 통해 on premises와 AWS Resource간 DNS Query가 가능하게 구성할 수 있습니다.

### AWS Transit Gateway
- VPC, on premises등의 네트워크를 단일 지점으로 연결할 수 있는 라우팅 서비스입니다. 

### AWS Direct Connect 
- 특정한 장소에서 AWS와 전용 네트워크 연결을 제공하는 서비스 입니다. 

### AWS CloudFront
- AWS에서 제공하는 CDN 서비스입니다.

### AWS Global Accelerator 
- local 또는 Global 사용자를 대상으로 application과 사용자의 경로를 최적화하여 트래픽의 성능을 개선하는 서비스입니다.

