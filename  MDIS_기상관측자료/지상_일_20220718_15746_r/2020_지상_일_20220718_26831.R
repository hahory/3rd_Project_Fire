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

mdis <- read.table("2020_지상_일_20220718_26831.csv", header=FALSE, sep=",", colClasses = c("character"
, "character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"
, "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"
, "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "character", "numeric", "numeric", "numeric"), skip=1, na.string=c("*","**","***","****","*****","******","*******","********","*********","**********","."))

        mdis$V1<- recode_factor(mdis$V1, '100'="대관령")
        mdis$V1<- recode_factor(mdis$V1, '101'="춘천")
        mdis$V1<- recode_factor(mdis$V1, '102'="백령도")
        mdis$V1<- recode_factor(mdis$V1, '104'="북강릉")
        mdis$V1<- recode_factor(mdis$V1, '105'="강릉")
        mdis$V1<- recode_factor(mdis$V1, '106'="동해")
        mdis$V1<- recode_factor(mdis$V1, '108'="서울")
        mdis$V1<- recode_factor(mdis$V1, '112'="인천")
        mdis$V1<- recode_factor(mdis$V1, '114'="원주")
        mdis$V1<- recode_factor(mdis$V1, '115'="울릉도")
        mdis$V1<- recode_factor(mdis$V1, '119'="수원")
        mdis$V1<- recode_factor(mdis$V1, '121'="영월")
        mdis$V1<- recode_factor(mdis$V1, '127'="충주")
        mdis$V1<- recode_factor(mdis$V1, '129'="서산")
        mdis$V1<- recode_factor(mdis$V1, '130'="울진")
        mdis$V1<- recode_factor(mdis$V1, '131'="청주")
        mdis$V1<- recode_factor(mdis$V1, '133'="대전")
        mdis$V1<- recode_factor(mdis$V1, '135'="추풍령")
        mdis$V1<- recode_factor(mdis$V1, '136'="안동")
        mdis$V1<- recode_factor(mdis$V1, '137'="상주")
        mdis$V1<- recode_factor(mdis$V1, '138'="포항")
        mdis$V1<- recode_factor(mdis$V1, '140'="군산")
        mdis$V1<- recode_factor(mdis$V1, '143'="대구")
        mdis$V1<- recode_factor(mdis$V1, '146'="전주")
        mdis$V1<- recode_factor(mdis$V1, '152'="울산")
        mdis$V1<- recode_factor(mdis$V1, '155'="창원")
        mdis$V1<- recode_factor(mdis$V1, '156'="광주")
        mdis$V1<- recode_factor(mdis$V1, '159'="부산")
        mdis$V1<- recode_factor(mdis$V1, '162'="통영")
        mdis$V1<- recode_factor(mdis$V1, '165'="목포")
        mdis$V1<- recode_factor(mdis$V1, '168'="여수")
        mdis$V1<- recode_factor(mdis$V1, '169'="흑산도")
        mdis$V1<- recode_factor(mdis$V1, '170'="완도")
        mdis$V1<- recode_factor(mdis$V1, '172'="고창")
        mdis$V1<- recode_factor(mdis$V1, '174'="순천")
        mdis$V1<- recode_factor(mdis$V1, '177'="홍성")
        mdis$V1<- recode_factor(mdis$V1, '184'="제주")
        mdis$V1<- recode_factor(mdis$V1, '185'="고산")
        mdis$V1<- recode_factor(mdis$V1, '188'="성산")
        mdis$V1<- recode_factor(mdis$V1, '189'="서귀포")
        mdis$V1<- recode_factor(mdis$V1, '192'="진주")
        mdis$V1<- recode_factor(mdis$V1, '201'="강화")
        mdis$V1<- recode_factor(mdis$V1, '202'="양평")
        mdis$V1<- recode_factor(mdis$V1, '203'="이천")
        mdis$V1<- recode_factor(mdis$V1, '211'="인제")
        mdis$V1<- recode_factor(mdis$V1, '212'="홍천")
        mdis$V1<- recode_factor(mdis$V1, '216'="태백")
        mdis$V1<- recode_factor(mdis$V1, '217'="정선군")
        mdis$V1<- recode_factor(mdis$V1, '221'="제천")
        mdis$V1<- recode_factor(mdis$V1, '226'="보은")
        mdis$V1<- recode_factor(mdis$V1, '232'="천안")
        mdis$V1<- recode_factor(mdis$V1, '235'="보령")
        mdis$V1<- recode_factor(mdis$V1, '236'="부여")
        mdis$V1<- recode_factor(mdis$V1, '238'="금산")
        mdis$V1<- recode_factor(mdis$V1, '239'="세종")
        mdis$V1<- recode_factor(mdis$V1, '243'="부안")
        mdis$V1<- recode_factor(mdis$V1, '244'="임실")
        mdis$V1<- recode_factor(mdis$V1, '245'="정읍")
        mdis$V1<- recode_factor(mdis$V1, '247'="남원")
        mdis$V1<- recode_factor(mdis$V1, '248'="장수")
        mdis$V1<- recode_factor(mdis$V1, '251'="고창군")
        mdis$V1<- recode_factor(mdis$V1, '252'="영광군")
        mdis$V1<- recode_factor(mdis$V1, '253'="김해시")
        mdis$V1<- recode_factor(mdis$V1, '254'="순창군")
        mdis$V1<- recode_factor(mdis$V1, '255'="북창원")
        mdis$V1<- recode_factor(mdis$V1, '257'="양산시")
        mdis$V1<- recode_factor(mdis$V1, '258'="보성군")
        mdis$V1<- recode_factor(mdis$V1, '259'="강진군")
        mdis$V1<- recode_factor(mdis$V1, '260'="장흥")
        mdis$V1<- recode_factor(mdis$V1, '261'="해남")
        mdis$V1<- recode_factor(mdis$V1, '262'="고흥")
        mdis$V1<- recode_factor(mdis$V1, '263'="의령군")
        mdis$V1<- recode_factor(mdis$V1, '264'="함양군")
        mdis$V1<- recode_factor(mdis$V1, '266'="광양시")
        mdis$V1<- recode_factor(mdis$V1, '268'="진도군")
        mdis$V1<- recode_factor(mdis$V1, '271'="봉화")
        mdis$V1<- recode_factor(mdis$V1, '272'="영주")
        mdis$V1<- recode_factor(mdis$V1, '273'="문경")
        mdis$V1<- recode_factor(mdis$V1, '276'="청송군")
        mdis$V1<- recode_factor(mdis$V1, '277'="영덕")
        mdis$V1<- recode_factor(mdis$V1, '278'="의성")
        mdis$V1<- recode_factor(mdis$V1, '279'="구미")
        mdis$V1<- recode_factor(mdis$V1, '281'="영천")
        mdis$V1<- recode_factor(mdis$V1, '283'="경주시")
        mdis$V1<- recode_factor(mdis$V1, '284'="거창")
        mdis$V1<- recode_factor(mdis$V1, '285'="합천")
        mdis$V1<- recode_factor(mdis$V1, '288'="밀양")
        mdis$V1<- recode_factor(mdis$V1, '289'="산청")
        mdis$V1<- recode_factor(mdis$V1, '294'="거제")
        mdis$V1<- recode_factor(mdis$V1, '295'="남해")
        mdis$V1<- recode_factor(mdis$V1, '90'="속초")
        mdis$V1<- recode_factor(mdis$V1, '93'="북춘천")
        mdis$V1<- recode_factor(mdis$V1, '95'="철원")
        mdis$V1<- recode_factor(mdis$V1, '98'="동두천")
        mdis$V1<- recode_factor(mdis$V1, '99'="파주")

colnames(mdis) = c("지점번호"
, "지점명", "관측일", "평균기온", "일최고기온", "일최고기온시각", "일최저기온", "일최저기온시각", "일평균현지기압", "일최고현지기압", "일최고현지기압시각", "일최저현지기압", "일최저현지기압시각", "일평균해면기압", "일최고해면기압", "일최고해면기압시각", "일최저해면기압", "일최저해면기압시각", "일평균상대습도", "일최소상대습도", "일최소상대습도시각"
, "일평균수증기압", "일최고수증기압", "일최고수증기압시각", "일최저수증기압", "일최저수증기압시각", "일평균풍속", "일합성풍속", "일합성풍향", "일최대풍속", "일최대풍속시각", "일최대풍속풍향", "일최대순간풍속", "일최대순간풍속시각", "일최대순간풍속풍향", "풍정합", "일최다풍향", "일강수량", "10분최다강수량", "10분최다강수량시각", "1시간최다강수량"
, "1시간최다강수량시각", "9_9 강수량", "일최심신적설", "일최심신적설시각", "일최심적설", "일최심적설시각", "합계깊이신적설", "일평균전운량", "일평균중하층운량", "최저운고", "최저운고시각", "최다운량", "최다운량시각", "최다운형", "일합계일조시간", "일합계일사량", "일평균지면온도")

