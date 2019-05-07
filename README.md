# 🚀 swift-basic
도서 '꼼꼼한 재은 씨의 스위프트: 기본편'을 공부하면서 정리한 내용을 목차에 따라 나열합니다.


CHAPTER 01 첫 번째 iOS 앱 만들기\
1.1 첫 번째 앱, Hello World!\
1.1.1 Xcode 프로젝트 생성\
1.1.2 프로젝트 설정\
1.1.3 프로젝트 구성과 스토리보드 \
1.1.4 스토리보드로 화면 구성하기 \
1.1.5 화면 전환 구현하기 \
1.1.6 스위프트 코드 작성하기 \
1.2 시작 화면 제어하기 \
1.2.1 시작 화면 편집 \
1.2.2 새로운 시작 화면 파일로 교체하기 \
\
CHAPTER 02 iOS 앱의 구조와 코코아 터치 프레임워크 \
2.1 앱의 기본 구조 \
2.1.1 엔트리 포인트와 앱의 초기화 과정 \
[2.1.2 MVC 패턴](https://velog.io/@sogih/2019-05-05-1705-작성됨-d0jvaoy08g) \
[2.1.3 앱의 상태 변화](https://velog.io/@sogih/2019-05-05-1705-작성됨-5zjvap6byy) \
[2.2 iOS와 코코아 터치 프레임워크 \
2.2.1 iOS \
2.2.2 코코아 터치 프레임워크](https://velog.io/@sogih/iOS와-코코아-터치-프레임워크-lsjvc0iqlj) \
[2.3 앱을 구성하는 핵심 객체들 \
2.3.1 iOS 유저 인터페이스의 표현 구조 \
2.3.2 뷰 컨트롤러 \
2.3.3 뷰 컨트롤러의 상태 변화와 생명 주기](https://velog.io/@sogih/2019-05-07-1105-작성됨-bajvd675wm) \
\
CHAPTER 03 화면상의 객체를 제어하는 방법 \
[3.1 @IBOutlet과 @IBAction \
3.1.1 @IBOutlet - 객체의 참조 \
3.1.2 @IBAction - 객체의 이벤트 제어](https://velog.io/@sogih/IBOutlet과-IBAction-1djvdhxlhc) \
[3.2 인터페이스 빌더 객체와 클래스를 연결하는 방법 \
3.2.1 프로젝트 생성 및 실습 준비 \
3.2.2 스토리보드의 객체를 클래스와 연결하기 \
3.2.3 커넥션 인스펙터 탭을 사용하여 객체 연결하기 \
3.2.4 보조 에디터를 사용하여 객체 연결하기 \
3.2.5 커넥션 인스펙터 탭을 사용하여 객체 연결하기 \
3.2.6 문서 개요창을 활용하여 객체 연결하기 \
3.3 연결 테스트](IBTest) \
\
[CHAPTER 04 화면 전환 \
4.1 iOS에서의 화면 전환 개념 \
4.2 화면 전환 기법1 : 뷰를 이용한 화면 전환 \
4.3 화면 전환 기법2 : 뷰 컨트롤러 직접 호출에 의한 화면 전환](https://velog.io/@sogih/화면-전환) \
4.3.1 화면 전환 실습 \
4.3.2 뒤로 가기 버튼 만들기 \
4.4 내비게이션 컨트롤러를 이용한 화면 전환 \
4.5 세그웨이를 이용한 화면 전환 \
4.5.1 액션 세그웨이 \
4.5.2 매뉴얼 세그웨이 \
4.5.3 Unwind - 화면 복귀 \
4.5.4 커스텀 세그웨이 \
4.5.5 전처리 메소드의 활용 \
\
CHAPTER 05 다른 뷰 컨트롤러와 데이터 주고받기 \
5.1 화면 전환 과정에서의 값 전달 방식 \
5.2 뷰 컨트롤러에 직접 값을 전달하기 \
5.2.1 프레젠테이션 방식으로 화면 전환하면서 값을 전달하기 \
5.2.2 내비게이션 컨트롤러를 통해 화면 전환하면서 값을 전달하기 \
5.2.3 세그웨이를 이용하여 화면 전환하면서 값을 전달하기 \
5.3 이전 화면으로 값을 전달하기 \
5.3.1 직접 값을 주고 받기 \
5.3.2 저장소를 사용하여 값을 주고 받기 \
\
CHAPTER 06 사용자에게 메시지를 전달하는 방법 \
6.1 메시지 알림창 - UIAlertController \
6.1.1 UIAlertController \
6.1.2 입력 필드를 가지는 메시지 창 \
6.2 로컬 알림 \
6.2.1 UserNotification 프레임워크를 이용한 로컬 알림 \
6.2.2 기본 실습 \
6.2.3 받은 알림 처리하기\ 
6.2.4 UILocalNotification 객체를 이용한 로컬 알림 \
6.2.5 받은 알림 처리하기 \
6.2.6 미리 알림 기능 구현 \
\
CHAPTER 07 델리게이트 패턴 \
7.1 텍스트 필드 \
7.1.1 텍스트 필드의 특성 \
7.1.2 텍스트 필드에 델리게이트 패턴 적용하기 \
7.2 이미지 피커 컨트롤러 \
7.2.1 UIImagePickerController 클래스 \
7.2.2 이미지 피커 컨트롤러의 델리게이트 메소드 \
7.2.3 이미지 피커 컨트롤러 실습 \
7.2.4 익스텐션(Extension)을 이용한 델리게이트 패턴 코딩 \
\
CHAPTER 08 테이블 뷰를 이용한 데이터 목록 구현 \
8.1 테이블 뷰 컨트롤러 \
8.2 프로토타입 셀 \
8.2.1 프로토타입 셀을 이용한 테이블 뷰 실습 \
8.3 데이터 소스 \
8.3.1 데이터 소스 만들기 \
8.3.2 테이블 뷰와 데이터 소스 연동 \
8.4 커스텀 프로토타입 셀 \
8.4.1 커스텀 프로토타입 셀 구현하기 \
8.4.2 커스텀 클래스로 프로토타입 셀의 객체 제어하기 \
8.4.3 프로토타입 셀에 섬네일 이미지 추가하기 \
8.5 테이블 뷰의 행 높이를 결정하는 방식 \
8.5.1 tableView(_:estimatedHeightForRowAt:) \
\
CHAPTER 09 네트워크 통신과 API \
9.1 네트워크 통신의 종류 \
9.1.1 소켓 방식의 연결 지향 통신 \
9.1.2 비연결 지향 통신 \
9.2 오픈 API와 공공 콘텐츠 \
9.2.1 오픈 API \
9.2.2 영화 정보 제공 서비스 \
9.3 오픈 API를 이용한 네트워크 실습 \
9.3.1 API 기본 정보 \
9.3.2 네트워크 객체를 통한 데이터 요청 기능 구현 \
9.3.3 전달받은 데이터를 파싱하여 화면에 출력 \
9.3.4 더보기 기능 구현 \
\
CHAPTER 10 테이블 뷰의 동작원리 \
10.1 테이블 뷰를 스크롤할 때 발생하는 일들 \
10.1.1 재사용 메커니즘 \
10.1.2 이미지 비동기 처리하기 \
10.2 일반 뷰 컨트롤러에서 테이블 뷰 사용하기 \
\
CHAPTER 11 웹 뷰: 앱에서 웹 페이지를 여는 방법 \
11.1 WKWebView를 이용하여 영화 정보 상세 화면 구현하기 \
11.2 WKWebView \
11.3 델리게이트 패턴을 이용한 웹 뷰의 로딩 처리 \
\
CHAPTER 12 탭 바 컨트롤러 \
12.1 탭 바 컨트롤러 \
12.1.1 탭 바의 기본 개념 \
12.1.2 탭 바에 새 탭 추가하기 \
12.1.3 탭 바의 주요 기능 \
12.2 탭 바를 이용한 영화관 정보 제공 \
12.2.1 탭 바 컨트롤러 구성 \
12.2.2 영화관 정보 API \
12.3 영화관 목록 화면 구현하기 \
\
CHAPTER 13 맵킷 프레임워크 사용하기 \
13.1 인앱 프레임워크의 종류 \
13.2 맵킷 프레임워크 추가 \
13.3 영화관 위치 기능 구현 \
\
CHAPTER 14 오토 레이아웃 \
14.1 다양한 화면 크기에 대응하는 레이아웃 \
14.1.1 오토 리사이징(Auto-Resizing) \
14.1.2 오토 레이아웃(Auto Layout) 기능 \
14.2 MyMovieChart 프로젝트에 오토 레이아웃 적용하기 \
14.2.1 영화정보 화면 \
14.2.2 영화 상세 화면 \
14.2.3 영화관 목록 화면 \
14.2.4 영화관 상세 화면
