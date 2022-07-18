#**********************************************************************  
#	*주의 사항
#		현재 스크립트 파일은 파일명만 출력되어 있습니다.
#		따라서, 저장된 추출 결과 파일의 경로를 'read.table' 또는 'read.fwf'에 추가하여야 합니다.
#	예) 다운로드 받은 폴더명 : C:\Download
#	  ※ 파일 경로 추가 : "[다운로드 받은 폴더명]\기업활동조사_기업활동조사(제공)_2019_20191201_92007.txt"
# 		read.table("C:\Download\기업활동조사_기업활동조사(제공)_2019_20191201_92007.txt", ~~~
#		또는
#		read.fwf("C:\Download\기업활동조사_기업활동조사(제공)_2019_20191201_92007.txt", ~~~
#
#		R 스크립트는 R 에서 파일 경로만 수정하시면 바로 실행(Ctrl+Alt+R)가능하며,
#		데이터셋 생성 후에 R 의 여러 가지 분석 기능을 사용할 수 있습니다.
#
#**********************************************************************

install.packages("dplyr")
library(dplyr)

mdis <- read.table("2016_지상_일_20220718_15746.csv", header=FALSE, sep=",", colClasses = c("character"
, "character", "character", "numeric", "numeric", "character", "numeric", "character", "numeric", "numeric", "character", "numeric", "character", "numeric", "numeric", "character", "numeric", "character", "numeric", "numeric", "character"
, "numeric", "numeric", "character", "numeric", "character", "numeric", "numeric", "numeric", "numeric", "character", "numeric", "numeric", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "character", "numeric"
, "character", "numeric", "numeric", "character", "numeric", "character", "numeric", "numeric", "numeric", "numeric", "character", "numeric", "character", "character", "numeric", "numeric", "numeric", "numeric", "numeric"), skip=1, na.string=c("*","**","***","****","*****","******","*******","********","*********","**********","."))

        mdis$V55<- recode_factor(mdis$V55, 'Ac'="고적운")
        mdis$V55<- recode_factor(mdis$V55, 'As'="고층운")
        mdis$V55<- recode_factor(mdis$V55, 'Cb'="적란운")
        mdis$V55<- recode_factor(mdis$V55, 'Cc'="권적운")
        mdis$V55<- recode_factor(mdis$V55, 'Ci'="권운")
        mdis$V55<- recode_factor(mdis$V55, 'Cs'="권층운")
        mdis$V55<- recode_factor(mdis$V55, 'Cu'="적운")
        mdis$V55<- recode_factor(mdis$V55, 'Ns'="난층운")
        mdis$V55<- recode_factor(mdis$V55, 'Sc'="층적운")
        mdis$V55<- recode_factor(mdis$V55, 'St'="충운")

colnames(mdis) = c("지점번호"
, "지점명", "관측일", "평균기온", "일최고기온", "일최고기온시각", "일최저기온", "일최저기온시각", "일평균현지기압", "일최고현지기압", "일최고현지기압시각", "일최저현지기압", "일최저현지기압시각", "일평균해면기압", "일최고해면기압", "일최고해면기압시각", "일최저해면기압", "일최저해면기압시각", "일평균상대습도", "일최소상대습도", "일최소상대습도시각"
, "일평균수증기압", "일최고수증기압", "일최고수증기압시각", "일최저수증기압", "일최저수증기압시각", "일평균풍속", "일합성풍속", "일합성풍향", "일최대풍속", "일최대풍속시각", "일최대풍속풍향", "일최대순간풍속", "일최대순간풍속시각", "일최대순간풍속풍향", "풍정합", "일최다풍향", "일강수량", "10분최다강수량", "10분최다강수량시각", "1시간최다강수량"
, "1시간최다강수량시각", "9_9 강수량", "일최심신적설", "일최심신적설시각", "일최심적설", "일최심적설시각", "합계깊이신적설", "일평균전운량", "일평균중하층운량", "최저운고", "최저운고시각", "최다운량", "최다운량시각", "최다운형", "일합계일조시간", "일합계일사량", "일합계소형증발량", "일합계대형증발량", "일평균지면온도")

