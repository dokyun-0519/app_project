# 패키지 설치
install.packages('dplyr')

# 패키지를 로드
library(dplyr)

## 파일의 경로
## 1. 절대경로
## - 절대적인 주소 값
## - 환경이 변하더라도 같은 위치를 지정
## 2. 상대경로
## - 상대적인 주소 값
## - 환경이 변함에 따라 위치도 변화
## - ./ : 현재 작업중인 디렉토리
## - ../ : 현재 디렉토리에서 상위 디렉토리 이동
## - 폴더명/ : 하위 디렉토리(폴더명)로 이동

## 외부의 데이터 파일 로드
## csv 파일 로드 -> read.csv(파일의 경로)

## 상대 경로
## 현재 디렉토리에서 상위 디렉토리 이동(../)
## csv라는 하위 디렉토리 이동(csv/)
## example.csv (example.csv)
df <- read.csv('../csv/example.csv')
df

## 파이프 연산자
## %>%  : ctrl + shift + M
## 왼쪽에 있는 데이터를 오른쪽의 함수에 대입 (두 개를 연결)

## head(데이터프레임명, 개수) : 데이터프레임 상위 n개를 출력
head(df, 3)
df %>%  head(3)

## 인덱스의 조건식으로 필터링
## filter(조건식)
df %>% filter(Gender == 'male')

## base 함수로 필터링
## 조건식을 생성
df$Gender == 'male' -> flag
df[flag, ]

## 특정 컬럼의 데이터만 출력
## 패키지 사용
df %>% select ('Name', 'Phone')
df %>% select (-Gender)

# Base
df[c('Name','Phone')]

## 성별이 남자인 데이터 중 이름과 휴대폰 번호만 출력
## 패키지 사용
df %>%  filter(Gender == 'male') %>% 
  select(Name, Phone)
