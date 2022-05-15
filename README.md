# verilog & 목표: Verilog 디자인 및 시뮬레이션을 익히기 위한
디자인 (Verilog design), 테스트벤치 (Stimulus) 및 시뮬레이션 결과 (Waveform) 
<br>https://www.youtube.com/watch?v=jUYkYoYr8hs&t=1s > 맥OS환경 참고 영상 (홈브류 설치/아이텀 명령 및 웨이브 실행)
<br>https://saiankit30.medium.com/how-to-simulate-verilog-models-on-macos-5a6f821b2c4f > macOS에서 Verilog를 사용하여 전기 모델을 시뮬레이션하는 방법
<br>https://coder-solution.com/solution-blog/109582
<br> 홈브류> icarus-verilog
<br> 명령> brew install icarus-verilog

<br>출저:https://gtrfx.github.io/2020/03/02/verilog-ide-on-mac.html
윈도우즈만 가도 좋은 FPGA 툴들이 통합환경을 제공하고 있고 linux는 gui가 약간 아쉽지만 역시나 존재한다.

이 세상에 존재하는 가장 좋은 OS 환경에서 아쉽게도 logic 개발용 IDE가 없는데, 아쉽지만 eclipse에 verilog plugin을 붙여쓰는 방법도 있고 Microsoft visual code에 verilog 옵션들을 달아서 쓰면 된다.

나머지는 docker를 통해서 linux용 개발툴을 가져다 쓰는 방법이 가장 효과적이고 wave viewer는 GTKWave가 docker에서 dve를 불러내는 것보단 나은 듯 하다. 물론 dve가 워낙 이 바닥에서 발전된 툴이라 기능상의 직접비교는 불가하고 단지 묵직함이라든가 수행속도로 봤을 때 GTKWave가 쓸만하단 이야기다.

그래서 결론은

Visual studio code + verilog plugins + shortcut settings + verilator
Docker desktop + Xilinx/synopsys/cadence tools
GTKWave
정도면 소소하게 뭔가 일을 할 수 있다.

iverilog나 그외 공개용 툴들은 그 이름에 비해서 실제 성능은 믿을 수 없을 만큼 별로라 권장하지 않는다. 정 안되면 Xilinx에서 ISE의 무료 license를 받아서 아쉽지만 FPGA target으로 돌리는 게 차라리 낫다. 윈도우면 당장에 무료로 구할 수 있는 이 이상의 툴이 없고 Mac이면 docker를 통해서 X로 불러내서 써야하지만 command line 툴이 존재하기 때문에 microsoft visual code를 쓰면 된다.

요새도 가끔 보면 나이가 많이 든 사람들은 윈도우에서 ultraedit을 불러 쓰는 사람들이 있는 것 같던데, 세상이 많이 변해서 Microsoft visual code가 과거의 ultraedit의 자리를 넘겨받은 듯 하다. 아쉽지만 modular하다보니 생각만큼 가볍진 않다만, atom이라든가 slimetext에 비해서 그 기능과 무게는 적당하지 싶다.

신기하게도 verilator는 arch linux 같은 것에서도 설치가능한 package로 되어있다 (AUR에 등록되어있는 다른 것들과는 달리).

가장 빨리 손쉽게 결과만을 확인하고 싶다면 verilotor만한 것이 없다. C++로 직접 연동해서 test bench를 만들어서 테스트 할 수 있으니까 더 편하다. linux라고 하더라도 기존 VCS라든가 그외 유명 툴들이 RHEL 6 정도만 지원하기 때문에 최근의 linux 위에서 구동하기 불편하다면 verilator를 권한다.
