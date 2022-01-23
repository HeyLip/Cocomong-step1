# cocomong_step1

> 시작하기에 앞서 기본적인 안드로이드 스튜디오, 플러터 설치는 인터넷을 참고하셔서 다운받으시면 됩니다.   
> 이번 cocomong_step1에서 구현하고자 하는 것은 앱을 Firebase에 연결하고 구글 로그인을 구현하는 것입니다.   
> 최종결과는 다음과 같습니다.   
> ![1](https://user-images.githubusercontent.com/63987139/150679050-0d521f32-dc38-472e-85f5-250b296369ff.png)   

## 1. Firebase 연결
일단 [Firebase](https://www.google.com/aclk?sa=l&ai=DChcSEwjejfnO9sf1AhUXWmAKHfxwD1cYABABGgJ0bQ&sig=AOD64_0VCiLXprqYnzCwg7GsjoDrleZOew&q&adurl&ved=2ahUKEwjsy_HO9sf1AhVnk1YBHWP7B6sQ0Qx6BAgEEAE)를 클릭하셔서 들어가시면 됩니다.   
> 1) 그러면 아래와 같은 페이지가 나올텐데 이 이미지와 같이 콘솔로 이동을 클릭하시면 됩니다.   
![화면 캡처 2022-01-23 220125](https://user-images.githubusercontent.com/63987139/150679695-2d35df5e-9dcc-4963-b328-86fa5e1b26e7.png)   
   
> 2) 이제는 아래 이미지 처럼 프로젝트 만들기를 클릭하시면 됩니다.   
![화면 캡처 2022-01-23 220321](https://user-images.githubusercontent.com/63987139/150679773-e5f06fde-03ef-45f4-b5f5-1af7bdcd19bb.png)   
   
> 3) 프로젝트 이름은 자유롭게 설정하시면 됩니다. 그리고 계속을 눌러 진행해주세요.   
![image](https://user-images.githubusercontent.com/63987139/150679859-2f961389-a4a1-4dc7-b581-f337a7f5eb86.png)   
   
> 4) 이 앱을 구현할 때에는 이 애널리틱스 기능이 필요하지 않으므로 끄고 진행을 해주시면 됩니다.
![image](https://user-images.githubusercontent.com/63987139/150679973-6c5d24bd-16cb-4117-bfe0-2cf1602fd015.png)   
   
> 5) 이제 성공적으로 Firebase가 만들어진 것을 확인할 수 있고, 아래 이미지 처럼 안드로이드 아이콘을 눌러주시면 됩니다.   
![image](https://user-images.githubusercontent.com/63987139/150680128-66215f2f-13c5-4f7d-827b-42d191db44cf.png)   

> 6) Android 패키지 이름은 여러분들이 안드로이드 스튜디오를 통해 생성한 Flutter 프로젝트에 app수준에 build.gradle파일을 참조하시면 됩니다. 자세한 사항은 아래 이미지를 참고하시면 됩니다.   
![image](https://user-images.githubusercontent.com/63987139/150680438-5325f0ba-db8c-4dd4-b8df-d9f9673152bc.png) ![image](https://user-images.githubusercontent.com/63987139/150680609-14f5303d-b684-4086-ab89-5e130d0c24b7.png)   
   
> 7) google 로그인을 구현하기 위해서는 SHA-1을 등록해야하는데 이것은 다음 링크를 클릭하신 다음 복사해서 붙여넣기 해주시면 됩니다.   
> 링크: [SHA-1 등록](https://prince-mint.tistory.com/11)   
> 그 다음 앱 등록을 눌러주신 다음 넘어가주시면 됩니다.   
![image](https://user-images.githubusercontent.com/63987139/150680721-01d12962-ad27-4b26-8036-1252942dd30a.png)   
   
> 8) 이제 google-services.json을 다운받으신 후 다음과 같은 위치에 google-services.json을 넣어주시면 됩니다. (android 폴더 안에 app이라는 폴더 안에 그리고 src 폴더 밑에 넣어주시면 됩니다.)   
![image](https://user-images.githubusercontent.com/63987139/150681231-cfcdb277-66a2-4ac0-99b3-769d75ad450e.png)   
   
> 9) 이제 app 수준의 build.gradle 파일과 project 수준의 build.gradle 파일에 여러 코드를 추가시켜줘야 합니다. 다음 아래와 같은 문구를 추가해주세요.   
> app 수준의 build.gradle 파일   
![image](https://user-images.githubusercontent.com/63987139/150681728-f6061e54-3a22-4376-8a9f-10ff5e4b0283.png)
![image](https://user-images.githubusercontent.com/63987139/150681818-755c59e4-629b-4bc3-8b41-f872a00527b9.png)
> multidex라는 추가적인 코드를 넣어주었는데 넣어준 이유에 대해서는 다음 링크를 참고하시면 됩니다.   
> 링크: [multidext](https://paulaner80.tistory.com/entry/Execution-failed-for-task-appmergeDexDebug)   

> project 수준의 build.gradle 파일
![image](https://user-images.githubusercontent.com/63987139/150681968-f0bc7c9b-ca0a-46df-85f5-8a44c31d8af1.png)   

> 10) 이제 마지막으로 안드로이드 스튜디오 터미널을 열어 아래와 같은 명령어를 차례대로 하니씩 입력을 해주시면 됩니다.   
> flutter pub add firebase_core   
> flutter pub add cloud_firestore   
> flutter pub add firebase_auth   
> flutter pub add firebase_storage   
> flutter pub add google_sign_in   
![image](https://user-images.githubusercontent.com/63987139/150682062-8918f67d-fc46-4bd4-81ec-f567a01d1612.png)   
   
   
이제 기본적인 Firebase 연결을 마쳤습니다. 이제는 앱 내의 이미지를 넣는 방법 알려드리겠습니다.   
   
   
   
## 2. image 넣기
> 1) image를 넣기 위해서는 프로젝트내의 assets 폴더를 만들어줍니다. 그리고 assets폴더 안에 cocomong image 넣어줍니다.   
![image](https://user-images.githubusercontent.com/63987139/150682733-0329cf2d-0cce-4af5-8cac-c78ea21b8f27.png)   
![image](https://user-images.githubusercontent.com/63987139/150682774-a4023fb7-f9bc-4e6c-99f3-ece3d1d007c6.png)   
> 링크: [코코몽 이미지 다운로드](https://drive.google.com/file/d/1kL1XoaudKOinR-UMxWqiJU21UXs_Qx_W/view?usp=sharing)  

   
   
> 2) cocomong 이미지를 넣어준 파일의 경로를 pubspec.yaml파일에 경로를 추가해줘야 합니다.   
> image를 경로를 추가할 때, assets문구가 주석처리가 되어있을텐데 주석처리를 해제한 다음 아래 이미지처럼 추가해주시면 됩니다. 그리고 indentation을 주의해야합니다!   
![image](https://user-images.githubusercontent.com/63987139/150682998-17488808-e02e-469e-a8d0-5e9fcdf00c59.png)

> 3) 이제 코드를 구현할 때 다음과 같이 사용을 하면 됩니다.   
![image](https://user-images.githubusercontent.com/63987139/150683128-0a83f375-68de-4194-85bd-92be7b59605c.png)   


## 3. google 로그인 구현
