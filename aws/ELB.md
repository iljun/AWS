# ELB (Elastic Load Balancing)
EC2의 인스턴스 상태를 확인하고 데이터를 분산하여 전달하는 역할을 수행한다.

실제 Request를 보내는 곳은 EC2가 아닌 ELB로 전달하면 ELB가 적절히 EC2로 분산한다.

## ALB (Application Load Balancer)
HTTP, HTTPS를 이용하는 Application의 분산처리를 제공

NLB보다 조금 느릴 수 있지만 HTTP, HTTPS에 대해 세부적인 load balancing이 가능하다.

URL 경로 기반 라우팅, host 기반, HTTP 헤더를 기반으로 load balancing이 가능하다.

forward, routing, HTTP status 지정 등을 설정 할 수 있다.

## NLB (Network Load Balancer)
TCP, UDP protocol에 대한 포트 정보를 기반으로 네트워크 기반의 분산처리를 제공 

OSI 4계층 레벨의 로드밸런서로써, 가장 빠르게 load balancing이 가능하다.



ELB는 public, private한 통신 방식을 가지고 있다.

## public 
public 주소를 소유하고 있어 public한 환경에서 요청을 받아 EC2 인스턴스로 라우팅 

## private
private 주소만을 가지고 있어, VPC에 접근하여 등록된 EC2에 라우팅한다.


