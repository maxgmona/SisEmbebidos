
_main:

;Sonidos.c,22 :: 		void main() {
;Sonidos.c,23 :: 		ANSEL = 0;
	CLRF       ANSEL+0
;Sonidos.c,24 :: 		ANSELH = 0;
	CLRF       ANSELH+0
;Sonidos.c,25 :: 		C1ON_bit = 0;
	BCF        C1ON_bit+0, BitPos(C1ON_bit+0)
;Sonidos.c,26 :: 		C2ON_bit = 0;
	BCF        C2ON_bit+0, BitPos(C2ON_bit+0)
;Sonidos.c,27 :: 		TRISC = 0x00;
	CLRF       TRISC+0
;Sonidos.c,28 :: 		TRISD = 0x00;
	CLRF       TRISD+0
;Sonidos.c,29 :: 		TRISB = 0x07;
	MOVLW      7
	MOVWF      TRISB+0
;Sonidos.c,31 :: 		Sound_Init(&PORTE,0);
	MOVLW      PORTE+0
	MOVWF      FARG_Sound_Init_snd_port+0
	CLRF       FARG_Sound_Init_snd_pin+0
	CALL       _Sound_Init+0
;Sonidos.c,33 :: 		while(1)
L_main0:
;Sonidos.c,35 :: 		if(PORTB.F0 = 1){
	BSF        PORTB+0, 0
	BTFSS      PORTB+0, 0
	GOTO       L_main2
;Sonidos.c,36 :: 		flag = 1;
	MOVLW      1
	MOVWF      _flag+0
	MOVLW      0
	MOVWF      _flag+1
;Sonidos.c,37 :: 		if(!(PORTB.F1 = 1) & !(PORTB.F2 = 1)){
	BSF        PORTB+0, 1
	BTFSC      PORTB+0, 1
	GOTO       L__main44
	BSF        112, 0
	GOTO       L__main45
L__main44:
	BCF        112, 0
L__main45:
	BSF        PORTB+0, 2
	BTFSC      PORTB+0, 2
	GOTO       L__main46
	BSF        3, 0
	GOTO       L__main47
L__main46:
	BCF        3, 0
L__main47:
	BTFSS      112, 0
	GOTO       L__main48
	BTFSS      3, 0
	GOTO       L__main48
	BSF        112, 0
	GOTO       L__main49
L__main48:
	BCF        112, 0
L__main49:
	BTFSS      112, 0
	GOTO       L_main3
;Sonidos.c,38 :: 		move();
	CALL       _move+0
;Sonidos.c,39 :: 		}
L_main3:
;Sonidos.c,40 :: 		if(!(PORTB.F1 = 1) & (PORTB.F2 = 1)){
	BSF        PORTB+0, 1
	BTFSC      PORTB+0, 1
	GOTO       L__main50
	BSF        112, 0
	GOTO       L__main51
L__main50:
	BCF        112, 0
L__main51:
	BSF        PORTB+0, 2
	BTFSS      112, 0
	GOTO       L__main52
	BTFSS      PORTB+0, 2
	GOTO       L__main52
	BSF        3, 0
	GOTO       L__main53
L__main52:
	BCF        3, 0
L__main53:
	BTFSS      3, 0
	GOTO       L_main4
;Sonidos.c,41 :: 		explote();
	CALL       _explote+0
;Sonidos.c,42 :: 		}
L_main4:
;Sonidos.c,43 :: 		if((PORTB.F1 = 1) & !(PORTB.F2 = 1)){
	BSF        PORTB+0, 1
	BSF        PORTB+0, 2
	BTFSC      PORTB+0, 2
	GOTO       L__main54
	BSF        3, 0
	GOTO       L__main55
L__main54:
	BCF        3, 0
L__main55:
	BTFSS      PORTB+0, 1
	GOTO       L__main56
	BTFSS      3, 0
	GOTO       L__main56
	BSF        112, 0
	GOTO       L__main57
L__main56:
	BCF        112, 0
L__main57:
	BTFSS      112, 0
	GOTO       L_main5
;Sonidos.c,44 :: 		gameover();
	CALL       _gameover+0
;Sonidos.c,45 :: 		}
L_main5:
;Sonidos.c,46 :: 		if((PORTB.F1 = 1) & (PORTB.F2 = 1)){
	BSF        PORTB+0, 1
	BSF        PORTB+0, 2
	BTFSS      PORTB+0, 1
	GOTO       L__main58
	BTFSS      PORTB+0, 2
	GOTO       L__main58
	BSF        3, 0
	GOTO       L__main59
L__main58:
	BCF        3, 0
L__main59:
	BTFSS      3, 0
	GOTO       L_main6
;Sonidos.c,47 :: 		win();
	CALL       _win+0
;Sonidos.c,48 :: 		}
L_main6:
;Sonidos.c,49 :: 		}
L_main2:
;Sonidos.c,50 :: 		}
	GOTO       L_main0
;Sonidos.c,51 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_gameover:

;Sonidos.c,53 :: 		void gameover() {
;Sonidos.c,54 :: 		int i = 0;
	CLRF       gameover_i_L0+0
	CLRF       gameover_i_L0+1
	MOVLW      50
	MOVWF      gameover_tonada_L0+0
	MOVLW      0
	MOVWF      gameover_tonada_L0+1
	MOVLW      85
	MOVWF      gameover_tonada_L0+2
	MOVLW      0
	MOVWF      gameover_tonada_L0+3
	MOVLW      70
	MOVWF      gameover_tonada_L0+4
	MOVLW      0
	MOVWF      gameover_tonada_L0+5
	MOVLW      125
	MOVWF      gameover_tonada_L0+6
	MOVLW      0
	MOVWF      gameover_tonada_L0+7
	MOVLW      69
	MOVWF      gameover_tonada_L0+8
	MOVLW      1
	MOVWF      gameover_tonada_L0+9
	MOVLW      195
	MOVWF      gameover_tonada_L0+10
	MOVLW      0
	MOVWF      gameover_tonada_L0+11
	MOVLW      63
	MOVWF      gameover_tonada_L0+12
	MOVLW      0
	MOVWF      gameover_tonada_L0+13
	MOVLW      84
	MOVWF      gameover_tonada_L0+14
	MOVLW      0
	MOVWF      gameover_tonada_L0+15
;Sonidos.c,59 :: 		for (i=0; i< 9; i++){
	CLRF       gameover_i_L0+0
	CLRF       gameover_i_L0+1
L_gameover7:
	MOVLW      128
	XORWF      gameover_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gameover61
	MOVLW      9
	SUBWF      gameover_i_L0+0, 0
L__gameover61:
	BTFSC      STATUS+0, 0
	GOTO       L_gameover8
;Sonidos.c,60 :: 		int tiempo = 0;
	CLRF       gameover_tiempo_L1+0
	CLRF       gameover_tiempo_L1+1
;Sonidos.c,61 :: 		if (i == 0 || i == 9){
	MOVLW      0
	XORWF      gameover_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gameover62
	MOVLW      0
	XORWF      gameover_i_L0+0, 0
L__gameover62:
	BTFSC      STATUS+0, 2
	GOTO       L__gameover39
	MOVLW      0
	XORWF      gameover_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__gameover63
	MOVLW      9
	XORWF      gameover_i_L0+0, 0
L__gameover63:
	BTFSC      STATUS+0, 2
	GOTO       L__gameover39
	GOTO       L_gameover12
L__gameover39:
;Sonidos.c,62 :: 		tiempo = 20;
	MOVLW      20
	MOVWF      gameover_tiempo_L1+0
	MOVLW      0
	MOVWF      gameover_tiempo_L1+1
;Sonidos.c,63 :: 		}
	GOTO       L_gameover13
L_gameover12:
;Sonidos.c,65 :: 		tiempo = TIME;
	MOVLW      244
	MOVWF      gameover_tiempo_L1+0
	MOVLW      1
	MOVWF      gameover_tiempo_L1+1
;Sonidos.c,66 :: 		}
L_gameover13:
;Sonidos.c,67 :: 		Sound_play(tonada[i],tiempo);
	MOVF       gameover_i_L0+0, 0
	MOVWF      R0+0
	MOVF       gameover_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      gameover_tonada_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       gameover_tiempo_L1+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       gameover_tiempo_L1+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos.c,68 :: 		Delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_gameover14:
	DECFSZ     R13+0, 1
	GOTO       L_gameover14
	DECFSZ     R12+0, 1
	GOTO       L_gameover14
	NOP
	NOP
;Sonidos.c,59 :: 		for (i=0; i< 9; i++){
	INCF       gameover_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       gameover_i_L0+1, 1
;Sonidos.c,69 :: 		}
	GOTO       L_gameover7
L_gameover8:
;Sonidos.c,70 :: 		}
L_end_gameover:
	RETURN
; end of _gameover

_move:

;Sonidos.c,72 :: 		void move() {
;Sonidos.c,73 :: 		int i = 0;
	CLRF       move_i_L0+0
	CLRF       move_i_L0+1
	MOVLW      238
	MOVWF      move_tonada_L0+0
	MOVLW      1
	MOVWF      move_tonada_L0+1
	MOVLW      114
	MOVWF      move_tonada_L0+2
	MOVLW      1
	MOVWF      move_tonada_L0+3
;Sonidos.c,78 :: 		for (i=0; i< 2; i++){
	CLRF       move_i_L0+0
	CLRF       move_i_L0+1
L_move15:
	MOVLW      128
	XORWF      move_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__move65
	MOVLW      2
	SUBWF      move_i_L0+0, 0
L__move65:
	BTFSC      STATUS+0, 0
	GOTO       L_move16
;Sonidos.c,79 :: 		int tiempo = 0;
	CLRF       move_tiempo_L1+0
	CLRF       move_tiempo_L1+1
;Sonidos.c,80 :: 		if (i == 0 || i == 2){
	MOVLW      0
	XORWF      move_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__move66
	MOVLW      0
	XORWF      move_i_L0+0, 0
L__move66:
	BTFSC      STATUS+0, 2
	GOTO       L__move40
	MOVLW      0
	XORWF      move_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__move67
	MOVLW      2
	XORWF      move_i_L0+0, 0
L__move67:
	BTFSC      STATUS+0, 2
	GOTO       L__move40
	GOTO       L_move20
L__move40:
;Sonidos.c,81 :: 		tiempo = 20;
	MOVLW      20
	MOVWF      move_tiempo_L1+0
	MOVLW      0
	MOVWF      move_tiempo_L1+1
;Sonidos.c,82 :: 		}
	GOTO       L_move21
L_move20:
;Sonidos.c,84 :: 		tiempo = TIME;
	MOVLW      244
	MOVWF      move_tiempo_L1+0
	MOVLW      1
	MOVWF      move_tiempo_L1+1
;Sonidos.c,85 :: 		}
L_move21:
;Sonidos.c,86 :: 		Sound_play(tonada[i],tiempo);
	MOVF       move_i_L0+0, 0
	MOVWF      R0+0
	MOVF       move_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      move_tonada_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       move_tiempo_L1+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       move_tiempo_L1+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos.c,87 :: 		Delay_ms(30);
	MOVLW      78
	MOVWF      R12+0
	MOVLW      235
	MOVWF      R13+0
L_move22:
	DECFSZ     R13+0, 1
	GOTO       L_move22
	DECFSZ     R12+0, 1
	GOTO       L_move22
;Sonidos.c,78 :: 		for (i=0; i< 2; i++){
	INCF       move_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       move_i_L0+1, 1
;Sonidos.c,88 :: 		}
	GOTO       L_move15
L_move16:
;Sonidos.c,89 :: 		}
L_end_move:
	RETURN
; end of _move

_explote:

;Sonidos.c,91 :: 		void explote() {
;Sonidos.c,92 :: 		int i = 0;
	CLRF       explote_i_L0+0
	CLRF       explote_i_L0+1
	MOVLW      220
	MOVWF      explote_tonada_L0+0
	MOVLW      0
	MOVWF      explote_tonada_L0+1
	MOVLW      246
	MOVWF      explote_tonada_L0+2
	MOVLW      0
	MOVWF      explote_tonada_L0+3
;Sonidos.c,97 :: 		for (i=0; i< 2; i++){
	CLRF       explote_i_L0+0
	CLRF       explote_i_L0+1
L_explote23:
	MOVLW      128
	XORWF      explote_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__explote69
	MOVLW      2
	SUBWF      explote_i_L0+0, 0
L__explote69:
	BTFSC      STATUS+0, 0
	GOTO       L_explote24
;Sonidos.c,98 :: 		int tiempo = 0;
	CLRF       explote_tiempo_L1+0
	CLRF       explote_tiempo_L1+1
;Sonidos.c,99 :: 		if (i == 0 || i == 2){
	MOVLW      0
	XORWF      explote_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__explote70
	MOVLW      0
	XORWF      explote_i_L0+0, 0
L__explote70:
	BTFSC      STATUS+0, 2
	GOTO       L__explote41
	MOVLW      0
	XORWF      explote_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__explote71
	MOVLW      2
	XORWF      explote_i_L0+0, 0
L__explote71:
	BTFSC      STATUS+0, 2
	GOTO       L__explote41
	GOTO       L_explote28
L__explote41:
;Sonidos.c,100 :: 		tiempo = 0.1;
	CLRF       explote_tiempo_L1+0
	CLRF       explote_tiempo_L1+1
;Sonidos.c,101 :: 		}
	GOTO       L_explote29
L_explote28:
;Sonidos.c,103 :: 		tiempo = TIME;
	MOVLW      244
	MOVWF      explote_tiempo_L1+0
	MOVLW      1
	MOVWF      explote_tiempo_L1+1
;Sonidos.c,104 :: 		}
L_explote29:
;Sonidos.c,105 :: 		Sound_play(tonada[i],tiempo);
	MOVF       explote_i_L0+0, 0
	MOVWF      R0+0
	MOVF       explote_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      explote_tonada_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       explote_tiempo_L1+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       explote_tiempo_L1+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos.c,106 :: 		Delay_ms(2);
	MOVLW      6
	MOVWF      R12+0
	MOVLW      48
	MOVWF      R13+0
L_explote30:
	DECFSZ     R13+0, 1
	GOTO       L_explote30
	DECFSZ     R12+0, 1
	GOTO       L_explote30
	NOP
;Sonidos.c,97 :: 		for (i=0; i< 2; i++){
	INCF       explote_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       explote_i_L0+1, 1
;Sonidos.c,107 :: 		}
	GOTO       L_explote23
L_explote24:
;Sonidos.c,108 :: 		}
L_end_explote:
	RETURN
; end of _explote

_win:

;Sonidos.c,110 :: 		void win() {
;Sonidos.c,111 :: 		int i = 0;
	CLRF       win_i_L0+0
	CLRF       win_i_L0+1
	MOVLW      250
	MOVWF      win_tonada_L0+0
	MOVLW      0
	MOVWF      win_tonada_L0+1
	MOVLW      160
	MOVWF      win_tonada_L0+2
	MOVLW      0
	MOVWF      win_tonada_L0+3
	MOVLW      222
	MOVWF      win_tonada_L0+4
	MOVLW      3
	MOVWF      win_tonada_L0+5
	MOVLW      160
	MOVWF      win_tonada_L0+6
	MOVLW      0
	MOVWF      win_tonada_L0+7
	MOVLW      130
	MOVWF      win_tonada_L0+8
	MOVLW      0
	MOVWF      win_tonada_L0+9
	MOVLW      108
	MOVWF      win_tonada_L0+10
	MOVLW      2
	MOVWF      win_tonada_L0+11
	MOVLW      254
	MOVWF      win_tonada_L0+12
	MOVLW      1
	MOVWF      win_tonada_L0+13
	MOVLW      150
	MOVWF      win_tonada_L0+14
	MOVLW      0
	MOVWF      win_tonada_L0+15
	MOVLW      120
	MOVWF      win_tonada_L0+16
	MOVLW      0
	MOVWF      win_tonada_L0+17
;Sonidos.c,116 :: 		for (i=0; i< 11; i++){
	CLRF       win_i_L0+0
	CLRF       win_i_L0+1
L_win31:
	MOVLW      128
	XORWF      win_i_L0+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__win73
	MOVLW      11
	SUBWF      win_i_L0+0, 0
L__win73:
	BTFSC      STATUS+0, 0
	GOTO       L_win32
;Sonidos.c,117 :: 		int tiempo = 0;
	CLRF       win_tiempo_L1+0
	CLRF       win_tiempo_L1+1
;Sonidos.c,118 :: 		if (i == 0 || i == 9){
	MOVLW      0
	XORWF      win_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__win74
	MOVLW      0
	XORWF      win_i_L0+0, 0
L__win74:
	BTFSC      STATUS+0, 2
	GOTO       L__win42
	MOVLW      0
	XORWF      win_i_L0+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__win75
	MOVLW      9
	XORWF      win_i_L0+0, 0
L__win75:
	BTFSC      STATUS+0, 2
	GOTO       L__win42
	GOTO       L_win36
L__win42:
;Sonidos.c,119 :: 		tiempo = 20;
	MOVLW      20
	MOVWF      win_tiempo_L1+0
	MOVLW      0
	MOVWF      win_tiempo_L1+1
;Sonidos.c,120 :: 		}
	GOTO       L_win37
L_win36:
;Sonidos.c,122 :: 		tiempo = TIME;
	MOVLW      244
	MOVWF      win_tiempo_L1+0
	MOVLW      1
	MOVWF      win_tiempo_L1+1
;Sonidos.c,123 :: 		}
L_win37:
;Sonidos.c,124 :: 		Sound_play(tonada[i],tiempo);
	MOVF       win_i_L0+0, 0
	MOVWF      R0+0
	MOVF       win_i_L0+1, 0
	MOVWF      R0+1
	RLF        R0+0, 1
	RLF        R0+1, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	ADDLW      win_tonada_L0+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      FARG_Sound_Play_freq_in_hz+0
	INCF       FSR, 1
	MOVF       INDF+0, 0
	MOVWF      FARG_Sound_Play_freq_in_hz+1
	MOVF       win_tiempo_L1+0, 0
	MOVWF      FARG_Sound_Play_duration_ms+0
	MOVF       win_tiempo_L1+1, 0
	MOVWF      FARG_Sound_Play_duration_ms+1
	CALL       _Sound_Play+0
;Sonidos.c,125 :: 		Delay_ms(100);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L_win38:
	DECFSZ     R13+0, 1
	GOTO       L_win38
	DECFSZ     R12+0, 1
	GOTO       L_win38
	DECFSZ     R11+0, 1
	GOTO       L_win38
	NOP
;Sonidos.c,116 :: 		for (i=0; i< 11; i++){
	INCF       win_i_L0+0, 1
	BTFSC      STATUS+0, 2
	INCF       win_i_L0+1, 1
;Sonidos.c,126 :: 		}
	GOTO       L_win31
L_win32:
;Sonidos.c,127 :: 		}
L_end_win:
	RETURN
; end of _win
