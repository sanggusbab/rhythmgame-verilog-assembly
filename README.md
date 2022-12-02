# developed
    By Lee,Sang-Min & Lee,Seung-
## Intruction Grammer
    RISC-V (something customized)
### Rhythm Game.pptx
    Presentation file on Digital System class
### Folder: Simulation_Capture/
    There are Wave Captures & Big size vslm.wlf(Cannot Upload to Github)
    You can find vslm.wlf at "https://1drv.ms/u/s!AvEVTmJBi2B_hIph5kI8OPaSQKS85g"
### git Address
    https://github.com/sanggusbab/DgtSys_RhythmGame.git
### Rhythm_Game_State_Design.ai
    RhythmGame Status Diagream
### hbe-combo2_user's_guide_v10-1016_.pdf
    published by banback // www.hanback.co.kr
### Status_Info.xlsx
    Assembly Codes Interpreter, Codes, Melody Interpreter
### Register Reference
    x31: Time wire
    x29: Interrupt wire
    x30, x28: status register
    x27:1000
    x26: (melody frequency address)
    x25: (melody time address)
    x24: 2^19
    x23: 2^12
    x22: (DataMemory Address)
    x2: WindowStatus
    x0: hardwired zero
### Quartus Pin Planner
    clk   Input   PIN_AB11
    interrupt[0]   Input   PIN_J4
    interrupt[1]   Input   PIN_L6
    interrupt[2]   Input   PIN_J1
    interrupt[3]   Input   PIN_J2
    interrupt[4]   Input   PIN_H1
    interrupt[5]   Input   PIN_L7
    interrupt[6]   Input   PIN_M5
    interrupt[7]   Input   PIN_M2
    interrupt[8]   Input   PIN_M3
    interrupt[9]   Input   PIN_M4
    interrupt[10]   Input   PIN_M6
    interrupt[11]   Input   PIN_J3
    interrupt[12]   Input   PIN_V3
    interrupt[13]   Input   PIN_W1
    interrupt[14]   Input   PIN_AA1
    interrupt[15]   Input   PIN_Y2
    interrupt[16]   Input   PIN_V4
    interrupt[17]   Input   PIN_W2
    interrupt[18]   Input   PIN_Y1
    interrupt[19]   Input   PIN_U1
    led_A_com[0]   Output   PIN_J7
    led_A_com[1]   Output   PIN_J6
    led_A_com[2]   Output   PIN_J5
    led_A_com[3]   Output   PIN_K8
    led_A_com[4]   Output   PIN_E3
    led_A_com[5]   Output   PIN_F2
    led_A_com[6]   Output   PIN_G5
    led_A_com[7]   Output   PIN_H8
    led_A_seg[0]   Output   PIN_H7
    led_A_seg[1]   Output   PIN_H6
    led_A_seg[2]   Output   PIN_H5
    led_A_seg[3]   Output   PIN_J8
    led_A_seg[4]   Output   PIN_H10
    led_A_seg[5]   Output   PIN_B2
    led_A_seg[6]   Output   PIN_C2
    led_A_seg[7]   Output   PIN_D2
    led_RGB[0]   Output   PIN_P4
    led_RGB[1]   Output   PIN_N2
    led_RGB[2]   Output   PIN_U2
    led_RGB[3]   Output   PIN_P1
    led_RGB[4]   Output   PIN_P5
    led_RGB[5]   Output   PIN_N5
    led_RGB[6]   Output   PIN_R1
    led_RGB[7]   Output   PIN_P2
    led_RGB[8]   Output   PIN_N1
    led_RGB[9]   Output   PIN_M1
    led_RGB[10]   Output   PIN_R2
    led_RGB[11]   Output   PIN_P3
    led_Single[0]   Output   PIN_T7
    led_Single[1]   Output   PIN_T5
    led_Single[2]   Output   PIN_T4
    led_Single[3]   Output   PIN_T3
    led_Single[4]   Output   PIN_P6
    led_Single[5]   Output   PIN_R7
    led_Single[6]   Output   PIN_R6
    led_Single[7]   Output   PIN_R5
    piezo   Output   PIN_AB18