## ifelse 함수를 생성
## ifelse (조건식(벡터데이터), 참인경우 값, 거짓인 경우의 값)
## ifelse함수의 결과 값의 데이터 타입 -> 벡터데이터
a <- c(TRUE,FALSE,TRUE, FALSE, FALSE)
ifelse(a, "T", 'F')

## ifelse함수는 백터 데이터를 리턴
## ifelse함수 안에는 비어있는 벡터 데이터에 데이터를 추가하는 부분 존재

## 벡터데이터에 데이터를 추가
result <- c()
length(result)
## 1부터 10까지 반복을 하는 반복문을 생성
for (i in 1:10){
  # print(i)
  if (i %% 2 == 0){
    # print(i)
    result[length(result)+1] <- i
  }
}
result
result[1]

## ifelse함수를 생성
iftest <- function(vector_bool, t, f){
  ## 되돌려주는 데이터는 백터데이터 -> 빈 벡터를 생성
  result <- c()
  
  ## vector_bool의 데이터 타입은 벡터
  ## 벡터의 길이만큼 반복하는 반복문을 생성
  ## while문에서 사용할 초기 값을 지정
  i <- 1
  
  # while 조건식
  while (i <= length(vector_bool)){
    ## i가 의미하는 것은? 벡터데이터의 위치
    ## vector_bool의 i번째 데이터가 참일때
    if(vector_bool[i]){
      ## result에 t인자값(2번째 매개변수)을 추가
      result[i] <- t
    } else {
      ## vector_bool의 i번째 데이터가 거짓인 경우
      ## result에 f인자값(3번째 매개변수)을 추가
      result[i] <- f
    }
    i <- i + 1
  }
  return (result)
}
iftest(
  c(TRUE, TRUE, FALSE, FALSE),
  'T',
  'F'
)


## 결측치 데이터의 처리
c1 = c(1,2,NA,4,5)
c2 = c(1,2,3,4,5)
c3 = c(NA,NA,3,4,5)

df = data.frame(c1,c2,c3)
df

str(df)
## 결측치 존재 유무
is.na(df)
## 결측치의 개수 확인
## TRUE의 개수를 확인
table(is.na(df))

## is.na 함수를 이용하여 데이터 필터링
is.na(df$c1) -> flag
df[flag,]
df[!flag,]

## 결측치가 포함된 컬럼 데이터는 연산이 제대로 이루어지지 않는다,
mean(df$c1)
mean(df$c2)
min(df$c1)
max(df$c1, na.rm = T)

# 외부의 데이터 파일을 로드 (csv)     
exam = read.csv("../csv/csv_exam.csv")
str(exam)
     
     
     
    