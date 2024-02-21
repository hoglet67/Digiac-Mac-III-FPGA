; Memory locations
ptr                     = &0000
ptr_high                = &0001
number                  = &0002
number_high             = &0003
l0004                   = &0004
l0005                   = &0005
l0006                   = &0006
l0007                   = &0007
l0008                   = &0008
l0009                   = &0009
l000a                   = &000a
l000b                   = &000b
l000c                   = &000c
l000d                   = &000d
l000e                   = &000e
l000f                   = &000f
l0010                   = &0010
l0011                   = &0011
l0012                   = &0012
l0013                   = &0013
l0040                   = &0040
l0041                   = &0041
l0042                   = &0042
l0043                   = &0043
l0044                   = &0044
l0045                   = &0045
l0046                   = &0046
l0047                   = &0047
l0048                   = &0048
l0049                   = &0049
l004a                   = &004a
l004b                   = &004b
l00f1                   = &00f1
l0100                   = &0100
l0101                   = &0101
nmi_v                   = &0200
nmi_v_high              = &0201
irq_v                   = &0202
irq_v_high              = &0203
brk_v                   = &0204
brk_v_high              = &0205
autorun_flag            = &0206
l0207                   = &0207
l0208                   = &0208
l0209                   = &0209
l020a                   = &020a
l020c                   = &020c
l020e                   = &020e
l020f                   = &020f
l0210                   = &0210
l0212                   = &0212
l0213                   = &0213
l0214                   = &0214
l0215                   = &0215
l0216                   = &0216
l0217                   = &0217
l0218                   = &0218
l0219                   = &0219
l021a                   = &021a
l021b                   = &021b
l021c                   = &021c
l021d                   = &021d
l021e                   = &021e
l021f                   = &021f
l0220                   = &0220
l0221                   = &0221
l0222                   = &0222
l0223                   = &0223
l0224                   = &0224
l0225                   = &0225
l0226                   = &0226
l0227                   = &0227
l0228                   = &0228
l0229                   = &0229
l022a                   = &022a
l022b                   = &022b
l022c                   = &022c
l022d                   = &022d
l022e                   = &022e
l022f                   = &022f
l0230                   = &0230
l0231                   = &0231
l0232                   = &0232
l0233                   = &0233
l0234                   = &0234
l0235                   = &0235
l0236                   = &0236
l0237                   = &0237
l0238                   = &0238
l0239                   = &0239
l023a                   = &023a
l023b                   = &023b
l0242                   = &0242
l0243                   = &0243
l0244                   = &0244
l0245                   = &0245
l0246                   = &0246
l0263                   = &0263
l0264                   = &0264
l0265                   = &0265
l0266                   = &0266
l0267                   = &0267
l0268                   = &0268
l0269                   = &0269
l02c0                   = &02c0
l02c1                   = &02c1
l02c2                   = &02c2
l02c3                   = &02c3
l02c4                   = &02c4
l02c5                   = &02c5
l02c6                   = &02c6
l02c7                   = &02c7
l02c8                   = &02c8
l0300                   = &0300
l0301                   = &0301
l0304                   = &0304
l0306                   = &0306
l0307                   = &0307
l030b                   = &030b
l030c                   = &030c
l0310                   = &0310
l0315                   = &0315
l0370                   = &0370
l0400                   = &0400
l7000                   = &7000
uart_reg_0              = &8000
uart_reg_1              = &8001
uart_reg_2              = &8002
uart_reg_3              = &8003
uart_reg_4              = &8004
uart_reg_5              = &8005
uart_reg_6              = &8006
uart_reg_7              = &8007
uart_reg_8              = &8008
uart_reg_9              = &8009
uart_reg_a              = &800a
uart_reg_b              = &800b
uart_reg_d_input_ports  = &800d
uart_reg_e              = &800e
uart_reg_f              = &800f
via_reg_0               = &9000
via_reg_1               = &9001
via_reg_2               = &9002
via_reg_3               = &9003
via_reg_4               = &9004
via_reg_5               = &9005
via_reg_11              = &900b
via_reg_13              = &900d
via_reg_14              = &900e
user_eprom_id_lo        = &a000
user_eprom_id_hi        = &a001
user_eprom_entry        = &a002

    org &c000

.abi_read
.pydis_start
    jmp cc0a0

    equb 0

.abi_readln
    jmp cc0a8

    equb 0

.abi_write
    jmp cc0b0

    equb 0

.abi_writln
    jmp cc0b8

    equb 0

.abi_exit
    jmp cc6a1

    equb 0

.abi_perr
    jmp cc0c0

    equb 0, 0, 0, 0, 0, 0, 0, 0, 0

.abi_ahexto
    jmp cc0d5

    equb 0

.abi_adecto
    jmp cc0fa

    equb 0

.abi_toahex
    jmp cc147

    equb 0

.abi_toadec
    jmp cc194

    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.abi_rdchar
    jmp cc1bc

    equb 0

.abi_rdbyte
    jmp cc1c3

    equb 0

.abi_wrchar
    jmp cc1fc

    equb 0

.abi_wrbyte
    jmp cc203

    equb 0

.abi_getin
    jmp serial_read_char

    equb 0

.abi_wt1ms
    jmp cc248

    equb 0

.abi_wtnms
    jmp cc254

    equb 0

.abi_crlf
    jmp cc520

    equb 0

.abi_clrscr
    jmp cc268

    equb 0

.abi_ledon
    jmp cc612

    equb 0

.abi_ledoff
    jmp cc61a

    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.abi_unknown_1
    jmp cc6dc

    equb 0

.abi_unknown_2
    jmp cc6cf

    equb 0

.abi_unknown_3
    jsr sub_cc6c2
    brk

    equb 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

.cc0a0
    sta l0004
    jsr sub_cc28e
    jmp cc483

.cc0a8
    sta l0004
    jsr sub_cc28e
    jmp cc3ee

.cc0b0
    sta l0004
    jsr sub_cc28e
    jmp cc4e1

.cc0b8
    sta l0004
    jsr sub_cc28e
    jmp cc4a6

.cc0c0
    sta l0231
    pha
    txa
    pha
    tya
    pha
    lda l0231
    jsr sub_cc62d
    pla
    tay
    pla
    tax
    pla
    clc
    rts

.cc0d5
    jsr sub_cc27a
    jsr sub_cc28e
    ldy #0
    jsr sub_ce1ec
    bcs cc0f3
    lda l000e
    sta number_high
    lda l000d
    sta number
    sta l0234
    jsr sub_cc299
    lda l0233
.cc0f3
    ldx l0234
    ldy l0235
    rts

.cc0fa
    jsr sub_cc27a
    jsr sub_cc28e
    lda #0
    sta l0237
    sta l0238
    sta l0239
    ldy #0
.loop_cc10d
    lda (l0007),y
    jsr sub_ce1e0
    bcs cc123
    pha
    jsr sub_ce2d6
    pla
    ora l0237
    sta l0237
    iny
    jmp loop_cc10d

.cc123
    cpy #0
    bne cc12e
    jsr sub_cc284
    lda #6
    sec
    rts

.cc12e
    jsr sub_ce28e
    jsr cc180
    lda l000e
    sta number_high
    jsr sub_cc299
    lda l000d
    sta number
    sta l0234
    jsr sub_cc284
    clc
    rts

.cc147
    jsr sub_cc27a
    jsr sub_cc28e
    lda number
    sta l000d
    lda number_high
    sta l000e
    lda l0007
    pha
    lda l0008
    pha
    jsr sub_cc4ff
    jsr sub_ce228
    pla
    sta l0008
    pla
    sta l0007
    ldx #3
.cc169
    ldy l0235
.loop_cc16c
    dey
    bmi cc180
    lda l0300,x
    sta (l0007),y
    dex
    bpl loop_cc16c
.loop_cc177
    dey
    bmi cc180
    lda #&30 ; '0'
    sta (l0007),y
    bne loop_cc177
.cc180
    lda l0007
    clc
    adc l0235
    sta l0007
    bcc cc18c
    inc l0008
.cc18c
    jsr sub_cc299
    jsr sub_cc284
    clc
    rts

.cc194
    jsr sub_cc27a
    jsr sub_cc28e
    lda number_high
    sta l000e
    lda number
    sta l000d
    jsr sub_ce25c
    ldx #4
.loop_cc1a7
    lda l0237
    and #&0f
    ora #&30 ; '0'
    sta l0300,x
    jsr sub_ce2b9
    dex
    bpl loop_cc1a7
    ldx #4
    jmp cc169

.cc1bc
    jsr sub_cc273
    jsr cc6dc
    rts

.cc1c3
    jsr sub_cc273
    tya
    pha
    txa
    pha
    jsr sub_cc4ff
    lda l0004
    cmp #3
    beq cc1ef
    ldy #3
    jsr cc3ee
.cc1d8
    bcs cc1e4
    ldy #0
    jsr sub_ce1ec
    bcs cc1e4
    lda l000d
    clc
.cc1e4
    sta l0231
    pla
    tax
    pla
    tay
    lda l0231
    rts

.cc1ef
    ldy #3
    lda #&0d
    sta (l0007),y
    dey
    jsr cc483
    jmp cc1d8

.cc1fc
    jsr sub_cc273
    jsr cc6cf
    rts

.cc203
    jsr sub_cc273
    sta l000d
    lsr a
    lsr a
    lsr a
    lsr a
    jsr sub_ce21f
    jsr cc6cf
    lda l000d
    and #&0f
    jsr sub_ce21f
    jsr cc6cf
    lda l000d
    rts

.serial_read_char
    jsr sub_cc273
    sta l0231
    lda l0004
    cmp #3
    beq cc23c
    lda uart_reg_1
    and #1
    beq cc237
    lda uart_reg_3
    clc
    rts

.cc237
    lda l0231
    sec
    rts

.cc23c
    stx l0233
    jsr read_keypad
    ldx l0233
    bcs cc237
    rts

.cc248
    stx l0231
    ldx #&c3
.loop_cc24d
    dex
    bne loop_cc24d
    ldx l0231
    rts

.cc254
    stx l0232
    tax
.loop_cc258
    jsr cc248
    dex
    bne loop_cc258
    ldx l0232
    rts

.maybe_unreachable_c262
    jsr sub_cc273
    jmp cc520

.cc268
    jsr sub_cc273
    pha
    lda #&0c
    jsr cc6cf
    pla
    rts

.sub_cc273
    pha
    lda l0005
    sta l0004
    pla
    rts

.sub_cc27a
    sta l0233
    stx l0234
    sty l0235
    rts

.sub_cc284
    lda l0233
    ldx l0234
    ldy l0235
    rts

.sub_cc28e
    pha
    lda ptr
    sta l0007
    lda ptr_high
    sta l0008
    pla
    rts

.sub_cc299
    pha
    lda l0007
    sta ptr
    lda l0008
    sta ptr_high
    pla
    rts

.cc2a4
    lda #<string_mac
    sta l0007
    lda #>string_mac
    sta l0008
    ldy #7
    jsr cc4e1
    jsr sub_cc50a
    ldy #&40 ; '@'
    jsr cc3ee
    bcs cc2f6
    ldy #0
    jsr sub_cc318
    bcc cc2c9
    lda l0225
    bne cc2ce
    beq cc2a4
.cc2c9
    ldx #0
    stx l0225
.cc2ce
    ldx #&10
.loop_cc2d0
    cmp led28,x
    beq cc2e0
    dex
    bpl loop_cc2d0
    lda #1
    jsr cc622
    jmp cc2a4

.cc2e0
    txa
    asl a
    tax
    lda led39,x
    sta l0012
    lda led3a,x
    sta l0013
    jsr sub_cc2f3
    jmp cf15d

.sub_cc2f3
    jmp (l0012)

.cc2f6
    cmp #&19
    beq cc2fd
    jmp cc622

.cc2fd
    lda #0
    sta l0225
    jmp cc2a4

.string_mac
    equb &0a, &0d
    equs "MAC: "

.sub_cc30c
    cmp #&5b ; '['
    bcs cc316
    cmp #&41 ; 'A'
    bcc cc316
    ora #&20 ; ' '
.cc316
    clc
    rts

.sub_cc318
    ldy #0
    ldx #0
    lda l0004
    sta l0221
    jsr cc389
    bcs cc340
.cc326
    jsr sub_cc380
    bcs cc340
    cmp #&20 ; ' '
    beq cc34d
    cmp #&22 ; '"'
    beq cc358
    cmp #&3e ; '>'
    beq cc36c
    jsr sub_cc30c
.cc33a
    sta l0300,x
    inx
    bne cc326
.cc340
    sta l0300,x
    jsr sub_cc4ff
    stx l0220
    jsr sub_cc380
    rts

.cc34d
    sta l0300,x
    inx
    jsr cc389
    bcs cc340
    bcc cc326
.cc358
    sta l0300,x
    inx
    jsr sub_cc380
    bcs cc367
    cmp #&22 ; '"'
    bne cc358
    beq cc33a
.cc367
    lda #8
    jmp cc622

.cc36c
    jsr sub_cc395
    sta l0221
.loop_cc372
    jsr sub_cc380
    bcs cc340
    cmp #&20 ; ' '
    beq loop_cc372
    lda #2
    jmp cc622

.sub_cc380
    lda (l0007),y
    cmp #&0d
    beq cc388
    iny
    clc
.cc388
    rts

.cc389
    jsr sub_cc380
    bcs cc394
    cmp #&20 ; ' '
    beq cc389
    dey
    clc
.cc394
    rts

.sub_cc395
    txa
    pha
    lda (l0007),y
    cmp #&2f ; '/'
    bne cc3b8
    iny
    sty l0231
    ldx #0
.loop_cc3a3
    lda (l0007),y
    cmp #&41 ; 'A'
    bcc cc3ab
    ora #&20 ; ' '
.cc3ab
    cmp led5b,x
    beq cc3be
.cc3b0
    inx
    inx
    inx
    inx
    cpx #&14
    bcc loop_cc3a3
.cc3b8
    pla
    tax
    lda #5
    sec
    rts

.cc3be
    iny
    inx
    lda led5b,x
    beq cc3df
    sta l0232
    lda (l0007),y
    cmp #&41 ; 'A'
    bcc cc3d0
    ora #&20 ; ' '
.cc3d0
    cmp l0232
    beq cc3be
    ldy l0231
    txa
    and #&fc
    tax
    jmp cc3b0

.cc3df
    txa
    and #&fc
    lsr a
    lsr a
    sta l0231
    pla
    tax
    lda l0231
    clc
    rts

.cc3ee
    txa
    pha
    sty l0220
    ldy #0
.cc3f5
    jsr cc6dc
    bcs cc45d
    cmp #&1b
    beq cc45b
    ldx l0006
    cmp l02c6,x
    beq cc41e
    cmp #&18
    beq cc440
    cmp #1
    beq cc46e
    sta (l0007),y
    jsr sub_cc44c
    bcs cc45d
    iny
    cmp #&0d
    beq cc467
    cpy l0220
    bcc cc3f5
.cc41e
    cpy #0
    beq cc3f5
    dey
    jsr sub_cc429
    jmp cc3f5

.sub_cc429
    lda l02c7,x
    jsr sub_cc44c
    lda l02c5,x
    bne cc43f
    lda #&20 ; ' '
    jsr sub_cc44c
    lda l02c7,x
    jsr sub_cc44c
.cc43f
    rts

.cc440
    cpy #0
    beq cc3f5
.loop_cc444
    jsr sub_cc429
    dey
    bne loop_cc444
    beq cc3f5
.sub_cc44c
    sta l0231
    lda l02c3,x
    beq cc45a
    lda l0231
    jsr cc6cf
.cc45a
    rts

.cc45b
    lda #&19
.cc45d
    sta l0231
    pla
    tax
    lda l0231
    sec
    rts

.cc467
    sty l0220
    pla
    tax
    clc
    rts

.cc46e
    lda (l0007),y
    cmp #&0d
    beq cc3f5
    jsr cc6cf
    iny
    cpy l0220
    bcc cc46e
    pla
    tax
    lda #2
    sec
    rts

.cc483
    txa
    pha
    sty l0220
    ldy #0
.loop_cc48a
    jsr cc6dc
    bcs cc45d
    cmp #&1b
    beq cc45b
    sta (l0007),y
    jsr sub_cc44c
    bcs cc45d
    iny
    cmp #&0d
    beq cc467
    cpy l0220
    bcc loop_cc48a
    bcs cc467
.cc4a6
    txa
    pha
    sty l0220
    cpy #0
    beq cc467
    ldy #0
.loop_cc4b1
    lda (l0007),y
    cmp #&7f
    bcc cc4b9
    lda #&2e ; '.'
.cc4b9
    jsr cc6cf
    bcs cc45d
    ldx l0006
    cmp #&0d
    beq cc4cd
    iny
    cpy l0220
    bcc loop_cc4b1
    jmp cc467

.cc4cd
    jsr cc6cf
    bcs cc45d
    lda l02c4,x
    beq cc467
    lda #&0a
    jsr cc6cf
    bcc cc467
.loop_cc4de
    jmp cc45d

.cc4e1
    txa
    pha
    sty l0220
    cpy #0
    bne cc4ed
    jmp cc467

.cc4ed
    ldy #0
.loop_cc4ef
    lda (l0007),y
    jsr cc6cf
    bcs loop_cc4de
    iny
    cpy l0220
    bcc loop_cc4ef
    jmp cc467

.sub_cc4ff
    lda #0
    sta l0007
    lda #3
    sta l0008
    ldy #0
    rts

.sub_cc50a
    lda #&40 ; '@'
    sta l0007
    lda #3
    sta l0008
    ldy #0
    rts

.sub_cc515
    lda #&80
    sta l0007
    lda #3
    sta l0008
    ldy #0
    rts

.cc520
    pha
    lda #&0d
    jsr cc6cf
    lda #&0a
    jsr cc6cf
    pla
    rts

.sub_cc52d
    pha
    lda #&0d
    sta (l0007),y
    iny
    lda #&0a
    sta (l0007),y
    iny
    pla
    rts

.cc53a
    sta l0231
    txa
    pha
    ldx l0231
    lda #&20 ; ' '
.loop_cc544
    sta (l0007),y
    iny
    dex
    bne loop_cc544
    pla
    tax
    rts

.sub_cc54d
    pha
    sta l000d
    jsr sub_ce230
    pla
    rts

.sub_cc555
    lda l020e
    sta l0009
    lda l020f
    sta l000a
    rts

.sub_cc560
    lda l000b
    sta l0222
    lda l000c
    sta l0223
    rts

.sub_cc56b
    pha
    lda l0222
    bne cc574
    dec l0223
.cc574
    dec l0222
    jsr sub_cc57c
    pla
    rts

.sub_cc57c
    pha
    lda l0222
    ora l0223
    beq cc588
    pla
    clc
    rts

.cc588
    pla
    sec
    rts

.sub_cc58b
    inc l0009
    bne cc591
    inc l000a
.cc591
    rts

.sub_cc592
    pha
    lda l0009
    bne cc599
    dec l000a
.cc599
    dec l0009
    pla
    rts

.sub_cc59d
    jsr sub_cc58b
    lda l000a
    cmp l000c
    bne cc5ad
    lda l0009
    cmp l000b
    bne cc5ad
    clc
.cc5ad
    rts

.sub_cc5ae
    lda l000a
    jsr sub_cc54d
.sub_cc5b3
    lda l0009
    jsr sub_cc54d
.sub_cc5b8
    lda #1
    jsr cc53a
    lda #&3a ; ':'
    sta (l0007),y
    iny
    lda #3
    jmp cc53a

.sub_cc5c7
    jsr sub_cc4ff
    lda l000a
    jsr sub_cc54d
    lda l0009
    jsr sub_cc54d
    lda #&2d ; '-'
    sta (l0007),y
    iny
    lda l000c
    jsr sub_cc54d
    lda l000b
    jsr sub_cc54d
    jsr cc4e1
    rts

.maybe_unreachable_c5e7
    lda #<string_done
    sta l0007
    lda #>string_done
    sta l0008
    ldy #7
    jsr cc4e1
    rts

.string_done
    equb &0d, &0a
    equs "Done"
    equb &0a

.sub_cc5fc
    pha
    tya
    pha
    lda #&14
    sta l0231
.loop_cc604
    ldy #&c8
.loop_cc606
    dey
    bne loop_cc606
    dec l0231
    bne loop_cc604
    pla
    tay
    pla
    rts

.cc612
    pha
    lda #&40 ; '@'
    sta uart_reg_e
    pla
    rts

.cc61a
    pha
    lda #&40 ; '@'
    sta uart_reg_f
    pla
    rts

.cc622
    jsr abi_perr
    lda #0
    sta l0225
    jmp cf15d

.sub_cc62d
    tax
    beq cc676
    lda #<string_error
    sta l0007
    lda #>string_error
    sta l0008
    lda #0
    sta l000e
    lda l0005
    sta l0004
    cmp #3
    beq cc677
    ldy #&0a
    jsr cc4e1
    stx l000d
    stx l0232
    jsr sub_ce25c
    ldx l0232
    lda l0237
    jsr abi_wrbyte
    jsr sub_cc4ff
    txa
    cmp #&1b
    bcs cc676
    asl a
    tax
    jsr sub_cc4ff
    lda lee69,x
    sta l0007
    lda lee6a,x
    sta l0008
    ldy #&7f
    jsr cc4a6
.cc676
    rts

.cc677
    jsr sub_cc4ff
.loop_cc67a
    lda lc699,y
    sta l0300,y
    iny
    cpy #6
    bcc loop_cc67a
    jsr cc4e1
    stx l000d
    jsr sub_ce25c
    lda l0237
    jsr abi_wrbyte
    jsr cc6dc
    rts

.string_error
    equb &0d, &0a
.lc699
    equs "ERROR : "

.cc6a1
    sta l0208
    stx l020a
    sty l020c
    php
    pla
    sta l0210
    cld
    lda l0005
    cmp #3
    beq cc6b9
    jsr sub_cde99
.cc6b9
    lda l0208
    jsr sub_cc62d
    jmp cf17a

.sub_cc6c2
    jsr sub_cc6e9
    equw sub_cc71d, sub_cc775, sub_cc811, sub_cc9d5, sub_cc84e

.cc6cf
    jsr sub_cc6e9
    equw sub_cc7f5, sub_cc803, sub_cc820, sub_cc9ea, sub_cc850

.cc6dc
    jsr sub_cc6e9
    equw loop_cc7bd, loop_cc7d9,  sub_cc84a,  sub_ccab8,  sub_cc900

.sub_cc6e9
    sta l0231
    pla
    sta l0010
    pla
    sta l0011
    txa
    pha
    tya
    pha
    lda l0004
    asl a
    tay
    asl a
    asl a
    tax
    stx l0006
    iny
    lda (l0010),y
    sta l0012
    iny
    lda (l0010),y
    sta l0013
    lda l0231
    jsr sub_cc71a
    sta l0231
    pla
    tay
    pla
    tax
    lda l0231
    rts

.sub_cc71a
    jmp (l0012)

.sub_cc71d
    lda #&10
    sta uart_reg_2
    lda #&20 ; ' '
    sta uart_reg_2
    lda #&30 ; '0'
    sta uart_reg_2
    lda #&40 ; '@'
    sta uart_reg_2
    lda #&50 ; 'P'
    sta uart_reg_2
    lda l02c0,x
    tay
    lda uart_reg_1_initial,y
    sta uart_reg_1
    lda #&80
    sta uart_reg_4
    lda l02c1,x
    tay
    lda uart_reg_4_initial,y
    sta uart_reg_0
    lda l02c2,x
    tay
    lda uart_reg_0_initial,y
    sta uart_reg_0
    lda #1
    sta uart_reg_e
    lda #5
    sta uart_reg_2
    clc
    rts

.uart_reg_1_initial
    equb   0, &11, &44, &55, &66, &88, &99, &bb
.uart_reg_4_initial
    equb &93, &92, &87, &86, &83, &52
.uart_reg_0_initial
    equb &17, &1f

.sub_cc775
    lda #&10
    sta uart_reg_a
    lda #&20 ; ' '
    sta uart_reg_a
    lda #&30 ; '0'
    sta uart_reg_a
    lda #&40 ; '@'
    sta uart_reg_a
    lda #&50 ; 'P'
    sta uart_reg_a
    lda l02c0,x
    tay
    lda uart_reg_1_initial,y
    sta uart_reg_9
    lda #&80
    sta uart_reg_4
    lda l02c1,x
    tay
    lda uart_reg_4_initial,y
    sta uart_reg_8
    lda l02c2,x
    tay
    lda uart_reg_0_initial,y
    sta uart_reg_8
    lda #2
    sta uart_reg_e
    lda #5
    sta uart_reg_a
    clc
    rts

.loop_cc7bd
    lda uart_reg_1
    lsr a
    bcc loop_cc7bd
    asl a
    and #&f0
    bne cc7cd
    lda uart_reg_3
    clc
    rts

.cc7cd
    sta l0224
    lda #&40 ; '@'
    sta uart_reg_2
    lda #&15
    sec
    rts

.loop_cc7d9
    lda uart_reg_9
    lsr a
    bcc loop_cc7d9
    asl a
    and #&f0
    bne cc7e9
    lda uart_reg_b
    clc
    rts

.cc7e9
    sta l0224
    lda #&40 ; '@'
    sta uart_reg_a
    lda #&15
    sec
    rts

.sub_cc7f5
    pha
.loop_cc7f6
    lda uart_reg_1
    and #4
    beq loop_cc7f6
    pla
    sta uart_reg_3
    clc
    rts

.sub_cc803
    pha
.loop_cc804
    lda uart_reg_9
    and #4
    beq loop_cc804
    pla
    sta uart_reg_b
    clc
    rts

.sub_cc811
    lda #&ff
    sta via_reg_2
    lda #&80
    sta via_reg_1
    sta via_reg_3
    clc
    rts

.sub_cc820
    sta l0231
    lda l0266
    and #4
    bne cc82d
    jsr sub_cc811
.cc82d
    bit via_reg_1
    bvs cc82d
    lda l0231
    sta via_reg_0
    lda via_reg_1
    and #&7f
    sta via_reg_1
    ora #&80
    sta via_reg_1
    lda l0231
    clc
    rts

.sub_cc84a
    lda #&1a
    sec
    rts

.sub_cc84e
    clc
    rts

.sub_cc850
    cli
    sta l0232
    txa
    pha
    lda l0266
    and #8
    bne cc89a
    lda #<complex_irq_handler
    sta irq_v
    lda #>complex_irq_handler
    sta irq_v_high
    lda #&40 ; '@'
    sta via_reg_11
    lda l0266
    ora #8
    sta l0266
    sei
    ldx #&c0
    stx via_reg_14
    lda #&ce
    sta via_reg_4
    sta l0236
    lda #0
    sta via_reg_5
    cli
    lda #&55 ; 'U'
    sta l0233
.loop_cc88d
    lda #&60 ; '`'
    sta l0234
.loop_cc892
    lda l0234
    bne loop_cc892
    dex
    bne loop_cc88d
.cc89a
    lda #4
    sta l0236
    ldx #9
    bne cc8a8
.loop_cc8a3
    lsr l0232
    bcs cc8c3
.cc8a8
    lda #&66 ; 'f'
.loop_cc8aa
    sta l0233
    ldy l0006
    lda l02c0,y
    tay
    lda lc8cb,y
    sta l0234
.loop_cc8b9
    lda l0234
    bne loop_cc8b9
    dex
    bmi cc8c7
    bne loop_cc8a3
.cc8c3
    lda #&55 ; 'U'
    bne loop_cc8aa
.cc8c7
    pla
    tax
    clc
    rts

.lc8cb
    equb   4, &10

.complex_irq_handler
    pha
    lda via_reg_4
    lda l0233
    ror a
    ror l0233
    lda #&80
    bcs cc8e1
    sta uart_reg_e
    bne cc8e4
.cc8e1
    sta uart_reg_f
.cc8e4
    dec l0235
    bne cc8fb
    dec l0236
    bne cc8fb
    lda l0266
    and #&f7
    sta l0266
    lda #&40 ; '@'
    sta via_reg_14
.cc8fb
    dec l0234
    pla
    rti

.sub_cc900
    txa
    pha
.cc902
    lda #3
    sta via_reg_4
    lda #8
    sta l0234
    lda #0
    sta l0233
    lda #&40 ; '@'
    sta via_reg_11
    jsr cc9bd
    lda l0266
    and #8
    bne cc93f
.cc920
    ldy #&0c
.cc922
    jsr sub_cc9ac
    cpx #7
    bcc cc920
    cpx #&13
    bcs cc920
    dec l0234
    bne cc922
    dey
    bne cc922
    lda l0266
    ora #8
    sta l0266
    bne cc902
.cc93f
    jsr sub_cc9ac
    cpx #&15
    bcc cc93f
    sta l0233
    ldx l0006
    lda l02c0,x
    beq cc953
    jsr sub_cc997
.cc953
    jsr cc9bd
    ldx #0
    ldy #&21 ; '!'
.loop_cc95a
    lda uart_reg_d_input_ports
    and #&40 ; '@'
    cmp l0235
    beq cc968
    inx
    sta l0235
.cc968
    dey
    bne loop_cc95a
    cpx #2
    ror l0232
    ldx l0006
    lda led8f,x
    beq cc97a
    jsr sub_cc9a1
.cc97a
    dec l0234
    bne cc953
    ldx l0006
    lda l02c0,x
    beq cc990
    jsr cc9bd
.loop_cc989
    jsr sub_cc9ac
    cpx #&12
    bcs loop_cc989
.cc990
    pla
    tax
    lda l0232
    clc
    rts

.sub_cc997
    ldy #&a0
.loop_cc999
    dey
    bne loop_cc999
    lda #&0d
    sta via_reg_5
.sub_cc9a1
    lda via_reg_4
.loop_cc9a4
    lda via_reg_13
    and #&40 ; '@'
    beq loop_cc9a4
    rts

.sub_cc9ac
    ldx #0
.loop_cc9ae
    inx
    lda uart_reg_d_input_ports
    and #&40 ; '@'
    cmp l0235
    beq loop_cc9ae
    sta l0235
    rts

.cc9bd
    lda uart_reg_d_input_ports
    and #&40 ; '@'
    cmp l0233
    bne cc9bd
.loop_cc9c7
    lda uart_reg_d_input_ports
    and #&40 ; '@'
    cmp l0233
    beq loop_cc9c7
    sta l0235
    rts

.sub_cc9d5
    jsr sub_ccaa0
    bcs cc9e9
    jsr sub_cca93
    sty l0242
    lda #&30 ; '0'
    sta uart_reg_f
    jsr sub_cca47
    clc
.cc9e9
    rts

.sub_cc9ea
    jsr sub_ccaa0
    bcc cc9f0
    rts

.cc9f0
    sta l0231
    ldy l0242
    cpy #8
    bcc cc9fd
    jsr sub_cca34
.cc9fd
    lda l0231
    cmp #&0c
    bne cca0a
.loop_cca04
    jsr sub_cca93
    jmp cca29

.cca0a
    cmp #&0a
    beq loop_cca04
    cmp #&0d
    bne cca16
    ldy #0
    beq cca29
.cca16
    ldx l0006
    cmp l02c7,x
    bne cca25
    dey
    lda #&20 ; ' '
    sta l023a,y
    bne cca29
.cca25
    sta l023a,y
    iny
.cca29
    sty l0242
    jsr sub_cca47
    lda l0231
    clc
    rts

.sub_cca34
    ldy #0
.loop_cca36
    lda l023b,y
    sta l023a,y
    iny
    cpy #7
    bcc loop_cca36
    lda #0
    sta l023a,y
    rts

.sub_cca47
    jsr sub_cca77
    ldx #0
.cca4c
    lda l023a,x
    bmi cca6a
    sta l0231
    cmp #&61 ; 'a'
    bcc cca5a
    sbc #&20 ; ' '
.cca5a
    sec
    sbc #&20 ; ' '
    tay
    lda ledb7,y
    ldy l0231
    cpy #&61 ; 'a'
    bcs cca6a
    eor #&80
.cca6a
    sta l7000
    jsr sub_cca88
    inx
    cpx #8
    bcc cca4c
    clc
    rts

.sub_cca77
    lda #&f0
    sta l7000
    lda #&20 ; ' '
    sta uart_reg_f
    jsr sub_cca88
    sta uart_reg_e
    rts

.sub_cca88
    pha
    lda #&10
    sta uart_reg_e
    sta uart_reg_f
    pla
    rts

.sub_cca93
    ldy #7
    lda #&20 ; ' '
.loop_cca97
    sta l023a,y
    dey
    bpl loop_cca97
    ldy #0
    rts

.sub_ccaa0
    sta l0231
    lda #&ff
    sta l7000
    lda uart_reg_d_input_ports
    and #&20 ; ' '
    beq ccab4
    lda l0231
    clc
    rts

.ccab4
    lda #&14
    sec
    rts

.sub_ccab8
    jsr sub_ccaa0
    bcc ccabe
    rts

.ccabe
    jsr sub_ccb05
    cmp l022b
    beq ccad8
    sta l022b
    lda #&28 ; '('
    sta l022c
    lda #&0e
    sta l022d
.ccad3
    lda l022b
    clc
    rts

.ccad8
    jsr sub_cc5fc
    jsr read_keypad
    bcs ccabe
    cmp l022b
    bne ccabe
    dec l022c
    bne ccad8
    lda l022d
    sta l022c
    dec l022d
    lda l022d
    cmp #4
    bcs ccafd
    inc l022d
.ccafd
    jmp ccad3

.ccb00
    lda #0
    sta l022b
.sub_ccb05
    jsr read_keypad
    bcs ccb00
.loop_ccb0a
    sta l0232
    jsr sub_cc5fc
    jsr read_keypad
    bcs ccb00
    cmp l0232
    bne loop_ccb0a
    clc
    rts

.read_keypad
    ldx #0
    lda #&fe
    sta l0231
.loop_ccb23
    lda l0231
    sta l7000
    lda uart_reg_d_input_ports
    and #&38 ; '8'
    eor #&38 ; '8'
    bne ccb3a
    inx
    asl l0231
    bcs loop_ccb23
    sec
    rts

.ccb3a
    lsr a
    lsr a
    lsr a
    ldy #&ff
.loop_ccb3f
    iny
    lsr a
    bcc loop_ccb3f
    tya
    asl a
    asl a
    asl a
    sta l0231
    txa
    ora l0231
    tax
    lda keypad_keys,x
    clc
    rts

.keypad_keys
    equs "0123456789ABCDEFMPLSGR+-"

.sub_ccb6c
    lda l020e
    sta l000d
    lda l020f
    sta l000e
    jsr sub_ce0df
    bcs ccbb4
    lda l000d
    sta l0009
    lda l000e
    sta l000a
    jsr ccbc7
    bcc ccb89
    rts

.ccb89
    jsr sub_cc515
    jsr sub_cc5ae
    sty l0231
    ldy #0
    lda (l0009),y
    ldy l0231
    jsr sub_cc54d
    lda #1
    jsr cc53a
    jsr cc4e1
    jsr sub_cc50a
    ldy #&40 ; '@'
    jsr cc3ee
    bcs ccbb7
    jsr sub_ccbc0
    bcc ccb89
    rts

.ccbb4
    jmp cc622

.ccbb7
    cmp #&19
    bne ccbb4
.ccbbb
    jsr cc520
    sec
    rts

.sub_ccbc0
    ldy #0
    jsr cc389
    bcs ccc26
.ccbc7
    jsr cc389
    bcs ccc29
    cmp #&22 ; '"'
    bne ccbd3
    jmp ccc9f

.ccbd3
    jsr sub_ce0df
    bcc ccc14
    cmp #6
    bne ccbb4
    jsr cc389
    bcs ccc29
    lda (l0007),y
    iny
    cmp #&2b ; '+'
    bne ccbee
    jsr sub_cc58b
    jmp ccbc7

.ccbee
    cmp #&2d ; '-'
    bne ccbf8
    jsr sub_cc592
    jmp ccbc7

.ccbf8
    cmp #&5b ; '['
    bne ccc02
    jsr sub_ccc2e
    jmp ccbc7

.ccc02
    cmp #&5d ; ']'
    bne ccc0c
    jsr sub_ccc67
    jmp ccbc7

.ccc0c
    cmp #&3a ; ':'
    beq ccbbb
    lda #2
    bne ccbb4
.ccc14
    sty l0231
    lda l000d
    ldy #0
    sta (l0009),y
    ldy l0231
    jsr sub_cc58b
    jmp ccbc7

.ccc26
    jsr sub_cc58b
.ccc29
    jsr cc520
    clc
    rts

.sub_ccc2e
    jsr sub_ccd26
    bcc ccc36
    jmp cc622

.ccc36
    sty l0231
    ldy #0
    lda l0215
    sta l000c
    lda l0214
    sta l000b
.ccc45
    lda l000b
    bne ccc4b
    dec l000c
.ccc4b
    dec l000b
    lda (l000b),y
    iny
    sta (l000b),y
    dey
    lda l000b
    cmp l0009
    bne ccc45
    lda l000c
    cmp l000a
    bne ccc45
    lda #0
    sta (l000b),y
    ldy l0231
    rts

.sub_ccc67
    jsr sub_ccd26
    bcc ccc6f
    jmp cc622

.ccc6f
    sty l0231
    ldy #1
    lda l0009
    sta l000b
    lda l000a
    sta l000c
.ccc7c
    lda (l000b),y
    dey
    sta (l000b),y
    iny
    inc l000b
    bne ccc88
    inc l000c
.ccc88
    lda l000b
    cmp l0214
    bne ccc7c
    lda l000c
    cmp l0215
    bne ccc7c
    lda #&ff
    dey
    sta (l000b),y
    ldy l0231
    rts

.ccc9f
    iny
    sty l0231
.loop_ccca3
    jsr sub_cc380
    bcs ccccb
    cmp #&22 ; '"'
    bne loop_ccca3
    ldy l0231
.loop_cccaf
    jsr sub_cc380
    bcs ccccb
    cmp #&22 ; '"'
    bne cccbb
    jmp ccbc7

.cccbb
    sty l0231
    ldy #0
    sta (l0009),y
    jsr sub_cc58b
    ldy l0231
    jmp loop_cccaf

.ccccb
    lda #8
    jmp cc622

.sub_cccd0
    lda l0214
    sta l000d
    lda l0215
    sta l000e
    jsr sub_ce0df
    bcs ccceb
    lda l000e
    cmp #&20 ; ' '
    bcs ccce9
    cmp #4
    bcs cccee
.ccce9
    lda #4
.ccceb
    jmp cc622

.cccee
    sta l0215
    lda l000d
    sta l0214
    lda #<string_memory_limit
    sta l0007
    lda #>string_memory_limit
    sta l0008
    ldy #&10
    jsr cc4e1
    jsr sub_cc4ff
    lda l000d
    pha
    lda l000e
    jsr sub_cc54d
    pla
    jsr sub_cc54d
    jsr cc4e1
    rts

.string_memory_limit
    equb &0a, &0d
    equs "Memory limit: "

.sub_ccd26
    lda l0215
    cmp l000a
    bcc ccd36
    bne ccd3a
    lda l0009
    cmp l0214
    bcc ccd3a
.ccd36
    lda #&0c
    sec
    rts

.ccd3a
    clc
    rts

.sub_ccd3c
    jsr cc520
    jsr sub_ce0df
    bcs ccd87
    beq ccd52
    jsr sub_cc4ff
    jsr sub_ce228
    jsr cc4e1
    jsr cc520
.ccd52
    rts

.sub_ccd53
    jsr cc389
    bcc ccd61
    jsr sub_ccd8a
    jsr sub_ccda2
    jmp cc520

.ccd61
    jsr sub_ce11c
    bcs ccd87
    jsr sub_ce0df
    bcs ccd87
    beq ccd85
    lda l000d
    sta l0208,x
    cpx #6
    bne ccd7b
    lda l000e
    sta l0209,x
.ccd7b
    cpx #&0a
    bne ccd84
    lda #1
    sta l0213
.ccd84
    rts

.ccd85
    lda #2
.ccd87
    jmp cc622

.sub_ccd8a
    lda #<string_a_x_y_pc_sp_sr
    sta l0007
    lda #>string_a_x_y_pc_sp_sr
    sta l0008
    lda l0221
    sta l0004
    ldy #&7f
    jsr cc4a6
    bcc ccda1
    jmp cc622

.ccda1
    rts

.sub_ccda2
    jsr sub_cc4ff
    ldx #0
.loop_ccda7
    lda #3
    jsr cc53a
    cpx #8
    bcs ccdc4
    cpx #6
    bne ccdba
    lda l0209,x
    jsr sub_cc54d
.ccdba
    lda l0208,x
    jsr sub_cc54d
    inx
    inx
    bne loop_ccda7
.ccdc4
    lda #1
    jsr sub_cc54d
    lda l0212
    jsr sub_cc54d
    lda #3
    jsr cc53a
    lda l0210
    jsr sub_cc54d
    lda #1
    jsr cc53a
    ldx #9
    lda l0210
    sta l0231
    sec
.loop_ccde8
    lda string_flags,x
    bcs ccdef
    lda #&2d ; '-'
.ccdef
    sta (l0007),y
    iny
    rol l0231
    dex
    bpl loop_ccde8
    lda #7
    jsr cc53a
    jsr cc4e1
    jsr sub_cc4ff
    jsr sub_cc555
    jsr sub_ce2e9
    jsr cc4e1
    rts

.string_a_x_y_pc_sp_sr
    equb &0a
    equs "   A    X    Y     PC     SP         SR             Disassembly"
    equb &0d
.string_flags
    equs ")CZIDB VN("

.cce58
    jmp cc622

.sub_cce5b
    jsr cc520
    lda l0225
    bne cce80
    lda #&6d ; 'm'
    sta l0225
    jsr cc389
    jsr sub_cc555
    lda #&40 ; '@'
    sta l000b
    lda #0
    sta l000c
    jsr sub_ce180
    bcs cce58
    lda l0221
    sta l0004
.cce80
    jsr sub_cc560
    jsr sub_cc57c
    bcc cce89
    rts

.cce89
    jsr sub_cc4ff
    jsr sub_cc5ae
    ldx #0
    sty l0231
    ldy #0
.loop_cce96
    lda (l0009),y
    sta l0370,x
    jsr sub_cc58b
    inx
    jsr sub_cc56b
    bcs ccea8
    cpx #8
    bcc loop_cce96
.ccea8
    stx l0232
    ldx #0
    ldy l0231
.loop_cceb0
    lda l0370,x
    jsr sub_cc54d
    lda #1
    jsr cc53a
    inx
    cpx l0232
    bcc loop_cceb0
.loop_ccec1
    cpx #8
    beq ccecd
    lda #3
    jsr cc53a
    inx
    bne loop_ccec1
.ccecd
    lda #3
    jsr cc53a
    ldx #0
.loop_cced4
    lda l0370,x
    cmp #&20 ; ' '
    bcc ccedf
    cmp #&7f
    bcc ccee1
.ccedf
    lda #&2e ; '.'
.ccee1
    sta (l0007),y
    iny
    inx
    cpx l0232
    bcc loop_cced4
    jsr cc4e1
    bcc ccef2
    jmp cc622

.ccef2
    jsr cc520
    jsr sub_cc57c
    bcs ccefd
    jmp cce89

.ccefd
    rts

.sub_ccefe
    jsr cc389
    bcc ccf06
    jmp cd0aa

.ccf06
    jsr sub_cc395
    bcc ccf0e
    jmp cc622

.ccf0e
    cmp #2
    bcc ccf15
    jmp cd0dd

.ccf15
    sta l0232
.ccf18
    lda #<string_loading
    sta l0007
    lda #>string_loading
    sta l0008
    ldy #&0d
    jsr cc4e1
.sub_ccf25
    lda l0232
    sta l0004
    asl a
    asl a
    asl a
    tax
    lda l02c3,x
    sta l0227
    lda #0
    sta l02c3,x
    jsr ccfec
    cmp #&30 ; '0'
    beq ccf43
    jmp ccfe4

.ccf43
    lda #0
    sta l0226
    jsr sub_cd003
    jsr sub_cd00b
    cpx #0
    beq ccf58
.loop_ccf52
    jsr sub_cd016
    dex
    bne loop_ccf52
.ccf58
    jsr sub_cd023
    eor #&ff
    cmp l0226
    beq ccf65
    jmp ccfe8

.ccf65
    lda l0266
    eor #1
    sta l0266
    lsr a
    bcs ccf76
    jsr cc612
    jmp ccf79

.ccf76
    jsr cc61a
.ccf79
    jsr ccfec
    cmp #&39 ; '9'
    beq ccfab
    cmp #&31 ; '1'
    bne ccfe4
    ldy #0
    sty l0226
    jsr sub_cd003
    jsr sub_cd00b
    cpx #0
    beq ccf9f
.loop_ccf93
    jsr sub_cd016
    sta (l0007),y
    sty l0235
    iny
    dex
    bne loop_ccf93
.ccf9f
    jsr sub_cd023
    eor #&ff
    cmp l0226
    bne ccfe8
    beq ccf65
.ccfab
    jsr sub_cd003
    clc
    adc #3
    tax
.loop_ccfb2
    jsr sub_cd023
    dex
    bne loop_ccfb2
    jsr cc6dc
    jsr cc6dc
    ldx l0006
    lda l0227
    sta l02c3,x
    jsr cc61a
    lda l0005
    sta l0004
    cmp #3
    beq ccfe1
    lda #<string_loaded
    sta l0007
    lda #>string_loaded
    sta l0008
    ldy #&0a
    jsr cc4e1
    jsr cc520
.ccfe1
    jmp cf144

.ccfe4
    lda #&18
    bne cd03e
.ccfe8
    lda #&17
    bne cd03e
.ccfec
    jsr cc6dc
    bcs cd03e
    cmp #&1b
    bne ccff9
    lda #&19
    bne cd03e
.ccff9
    cmp #&53 ; 'S'
    bne ccfec
    jsr cc6dc
    bcs cd03e
    rts

.sub_cd003
    jsr sub_cd016
    sec
    sbc #3
    tax
    rts

.sub_cd00b
    jsr sub_cd016
    sta l0008
    jsr sub_cd016
    sta l0007
    rts

.sub_cd016
    jsr sub_cd023
    pha
    clc
    adc l0226
    sta l0226
    pla
    rts

.sub_cd023
    jsr cc6dc
    bcs cd03e
    jsr sub_ce1bc
    asl a
    asl a
    asl a
    asl a
    sta l0232
    jsr cc6dc
    bcs cd03e
    jsr sub_ce1bc
    ora l0232
    rts

.cd03e
    pha
    ldx l0006
    lda l0227
    sta l02c3,x
    lda l0005
    sta l0004
    jsr cc61a
    pla
    jmp cc622

.string_loading
    equb &0a, &0d
    equs "Loading... "
.string_loaded
    equb &0a, &0d
    equs "Loaded  "
.string_device
    equb &0a, &0d
    equs "Device:  0=/t1  1=/t2  2=/cas "
.string_start_tape
    equb &0a, &0d
    equs "Start tape and press any key"

.loop_cd0a7
    jmp cc622

.cd0aa
    lda #<string_device
    sta l0007
    lda #>string_device
    sta l0008
    ldy #&20 ; ' '
    jsr cc4e1
.loop_cd0b7
    jsr cc6dc
    bcs loop_cd0a7
    cmp #&1b
    beq cd0fa
    cmp #&30 ; '0'
    beq cd0d2
    cmp #&31 ; '1'
    beq cd0d2
    cmp #&32 ; '2'
    bne loop_cd0b7
    jsr cc6cf
    jmp cd0e6

.cd0d2
    jsr cc6cf
    and #3
    sta l0232
    jmp ccf18

.cd0dd
    cmp #4
    beq cd0e6
    lda #&1a
    jmp cc622

.cd0e6
    lda #<string_start_tape
    sta l0007
    lda #>string_start_tape
    sta l0008
    ldy #&1e
    jsr cc4e1
    jsr cc6dc
    cmp #&1b
    bne cd0fb
.cd0fa
    rts

.cd0fb
    lda #<string_loading
    sta l0007
    lda #>string_loading
    sta l0008
    ldy #&0d
    jsr cc4e1
.sub_cd108
    lda #4
    sta l0004
    jsr cc6dc
    sta l000c
    sta l021f
    jsr cc612
    ldx #2
.loop_cd119
    jsr cc6dc
    sta l0009,x
    sta l021c,x
    dex
    bpl loop_cd119
    ldy #0
.loop_cd126
    jsr cc6dc
    sta (l0009),y
    jsr sub_cc59d
    bcc loop_cd126
    jsr cc61a
    lda l0266
    and #&f7
    sta l0266
    lda l0005
    sta l0004
    cmp #3
    bne cd144
    rts

.cd144
    lda #<string_loaded
    sta l0007
    lda #>string_loaded
    sta l0008
    ldy #&0a
    jsr cc4e1
    ldx #3
.loop_cd153
    lda l021c,x
    sta l0009,x
    dex
    bpl loop_cd153
    jsr sub_cc5c7
    jsr cc520
    rts

.cd162
    lda #4
.loop_cd164
    jmp cc622

.sub_cd167
    ldx #3
.loop_cd169
    lda l021c,x
    sta l0009,x
    dex
    bpl loop_cd169
    jsr sub_ce180
    bcs loop_cd164
    lda l000c
    cmp l000a
    bcc cd162
    bne cd184
    lda l0009
    cmp l000b
    bcs cd162
.cd184
    ldx #3
.loop_cd186
    lda l0009,x
    sta l021c,x
    dex
    bpl loop_cd186
    lda #<string_start_recording
    sta l0007
    lda #>string_start_recording
    sta l0008
    ldy #&23 ; '#'
    jsr cc4e1
    jsr cc6dc
    cmp #&1b
    bne cd1a3
    rts

.cd1a3
    lda #<string_saving
    sta l0007
    lda #>string_saving
    sta l0008
    ldy #&0a
    jsr cc4e1
    jsr sub_cc5c7
.sub_cd1b3
    jsr cc612
    lda #4
    sta l0004
    ldx #3
.loop_cd1bc
    lda l0009,x
    jsr cc6cf
    dex
    bpl loop_cd1bc
    ldy #0
.loop_cd1c6
    lda (l0009),y
    jsr cc6cf
    jsr sub_cc59d
    bcc loop_cd1c6
.loop_cd1d0
    lda l0266
    and #8
    bne loop_cd1d0
    jsr cc61a
    lda l0005
    sta l0004
    cmp #3
    bne cd1e3
    rts

.cd1e3
    lda #<string_saved
    sta l0007
    lda #>string_saved
    sta l0008
    ldy #8
    jsr cc4e1
    rts

.string_start_recording
    equb &0a, &0d
    equs "Start recording and press any key"
.string_saving
    equb &0a, &0d
    equs "Saving  "
.string_saved
    equb &0a, &0d
    equs "Saved"
    equb &0a

.sub_cd226
    jsr cc389
    bcc cd22e
    jmp cd2aa

.cd22e
    jsr sub_cc395
    bcs cd2ac
    cmp #2
    bcs cd2aa
    sta l0221
    asl a
    asl a
    asl a
    tax
    lda #<string_serial_params
    sta l0009
    lda #>string_serial_params
    sta l000a
.cd246
    jsr cc520
    jsr sub_cc4ff
.loop_cd24c
    lda (l0009),y
    sta (l0007),y
    iny
    cpy #&0a
    bcc loop_cd24c
    jsr sub_cc5b8
    lda l02c0,x
    jsr sub_cc54d
    lda #1
    jsr cc53a
    jsr cc4e1
    jsr sub_cc4ff
    ldy #&28 ; '('
    jsr cc3ee
    bcs cd2a4
    ldy #0
    jsr sub_ce0df
    bcs cd2ac
    beq cd27e
    lda l000d
    sta l02c0,x
.cd27e
    inx
    txa
    and #7
    beq cd291
    lda l0009
    adc #&0a
    sta l0009
    bcc cd28e
    inc l000a
.cd28e
    jmp cd246

.cd291
    jsr cc520
    lda l0221
    sta l0004
.loop_cd299
    lda uart_reg_1
    and #8
    beq loop_cd299
    jsr sub_cc6c2
    rts

.cd2a4
    cmp #&19
    beq cd291
    bne cd2ac
.cd2aa
    lda #5
.cd2ac
    jmp cc622

.sub_cd2af
    jsr sub_ccaa0
    bcc cd2b7
    jmp cc622

.cd2b7
    lda #<string_calling_keypad_display_monitor
    sta l0007
    lda #>string_calling_keypad_display_monitor
    sta l0008
    ldy #&22 ; '"'
    jsr cc4e1
    jmp ce6b2

.string_calling_keypad_display_monitor
    equb &0a, &0d
    equs "Calling Keypad/Display monitor"
    equb &0a, &0d

.sub_cd2e9
    jsr sub_cc380
    cmp #&70 ; 'p'
    bne cd2fa
    jsr sub_cc380
    cmp #&70 ; 'p'
    bne cd2fa
    jmp application_1

.cd2fa
    lda #1
    jmp cc622

.sub_cd2ff
    jsr cc389
    bcs cd30d
    cmp #&2b ; '+'
    beq cd318
    lda #1
    jmp cc622

.cd30d
    lda #<string_help_commands_short
    sta l0007
    lda #>string_help_commands_short
    sta l0008
    jmp cd348

.cd318
    lda #<string_help_commands_long
    sta l0007
    lda #>string_help_commands_long
    sta l0008
    jsr cd348
    lda #<string_press_return_for_system_address_info
    sta l0007
    lda #>string_press_return_for_system_address_info
    sta l0008
    lda l0005
    sta l0004
    jsr cc520
    ldy #&3a ; ':'
    jsr cc4e1
    jsr cc6dc
    bcs cd361
    cmp #&1b
    beq cd360
    lda #<string_help_system_addresses
    sta l0007
    lda #>string_help_system_addresses
    sta l0008
.cd348
    lda l0221
    sta l0004
.cd34d
    ldy #0
    lda (l0007),y
    beq cd360
    jsr cc6cf
    bcs cd361
    inc l0007
    bne cd34d
    inc l0008
    bne cd34d
.cd360
    rts

.cd361
    jmp cc622

.string_help_commands_short
    equb &0a, &0d
    equs "M <address> -  Display memory contents from the specified address"
    equb &0d, &0a
    equs "C <address> -  Change memory contents at the specified address"
    equb &0d, &0a
    equs "G <address> -  Execute a program from the specified address"
    equb &0d, &0a
    equs "T <address> -  Trace instruction at specified address and display "
    equs "registers"
    equb &0d, &0a
    equs "L           -  Load file from cassette or RS232 into memory"
    equb &0d, &0a
    equs "H+          -  Display the full help screen"
    equb &0d, &0a,   0
.string_help_commands_long
    equb &0a, &0d
    equs "*** MAC3 6502 Terminal Commands ***"
    equb &0a, &0a, &0d
    equs "B              - List all active breakpoints"
    equb &0a, &0d
    equs "B <address>    - Set breakpoint at <address>"
    equb &0a, &0d
    equs "C [<address>]  - Edit memory starting from <address>"
    equb &0a, &0d
    equs "D [<range>]    - Disassemble memory in <range>"
    equb &0a, &0d
    equs "G [<address>]  - Execute program from <address>"
    equb &0a, &0d
    equs "J              - Trace over subroutine instruction"
    equb &0a, &0d
    equs "K <address>    - Remove breakpoint at <address>"
    equb &0a, &0d
    equs "K*             - Remove all breakpoints"
    equb &0a, &0d
    equs "L              - Load file from cassette or RS232 into memory"
    equb &0a, &0d
    equs "M [<range>]    - Display memory contents in range"
    equb &0a, &0d
    equs "P              - Run Keypad/Display monitor (if connected)"
    equb &0a, &0d
    equs "R              - Display register contents"
    equb &0a, &0d
    equs "R<reg> <val>   - Set specified register value"
    equb &0a, &0d
    equs "S [<range>]    - Save memory to cassette"
    equb &0a, &0d
    equs "T [<range>]    - Single step trace instructions in range"
    equb &0a, &0d
    equs "[ [<address>]  - Set or display memory limit"
    equb &0a, &0a, &0d
    equs "<range>: [<start address>][;<count>]"
    equb &0a, &0d
    equs "Redirection character: >      Device names: /t1, /t2, /p, /kd, /ca"
    equs "s"
    equb &0a, &0d,   0
.string_press_return_for_system_address_info
    equs "Press RETURN for system address information, ESC to exit: "
.string_help_system_addresses
    equb &0a, &0a, &0d
    equs "System Device Addresses. (All addresses in hex)"
    equb &0a, &0d
    equs "     System workspace                0000 - 03FF"
    equb &0a, &0d
    equs "     User RAM                        0400 - 1FFF"
    equb &0a, &0d
    equs "     6522 VIA base address           9000"
    equb &0a, &0d
    equs "     User EPROM                      A000 - BFFF"
    equb &0a, &0a, &0d
    equs "Vectors and Variables"
    equb &0a, &0d
    equs "     NMI                             0200 - 0201"
    equb &0a, &0d
    equs "     IRQ                             0202 - 0203"
    equb &0a, &0d
    equs "     BRK                             0204 - 0205"
    equb &0a, &0d
    equs "     Auto-run RAM flag               0206  (Run if non zero)"
    equb &0a, &0d
    equs "     Address pointer (PTR)           0000 - 0001"
    equb &0a, &0d
    equs "     16-bit number (NUMBER)          0002 - 0003"
    equb &0a, &0a, &0d
    equs " System Calls     Maths Calls      User Calls"
    equb &0a, &0d
    equs " C000 - READ      C020 - AHEXTO    C040 - RDCHAR   C044 - RDBYTE"
    equb &0a, &0d
    equs " C004 - READLN    C024 - ADECTO    C048 - WRCHAR   C04C - WRBYTE"
    equb &0a, &0d
    equs " C008 - WRITE     C028 - TOAHEX    C050 - GETIN    C054 - WT1MS"
    equb &0a, &0d
    equs " C00C - WRITLN    C02C - TOADEC    C058 - WTNMS    C05C - CRLF"
    equb &0a, &0d
    equs " C010 - EXIT                       C060 - CLRSCR   C064 - LEDON"
    equb &0a, &0d
    equs " C014 - PERR                       C068 - LEDOFF"
    equb &0a, &0d,   0

.cdcb7
    jmp cc622

.sub_cdcba
    jsr cc520
    lda l0225
    bne cdcdf
    lda #&64 ; 'd'
    sta l0225
    jsr cc389
    jsr sub_cc555
    lda #&0a
    sta l000b
    lda #0
    sta l000c
    jsr sub_ce180
    bcs cdcb7
    lda l0221
    sta l0004
.cdcdf
    jsr sub_cc560
    jsr sub_cc57c
    bcc cdce8
    rts

.cdce8
    jsr sub_cc4ff
    jsr sub_cc5ae
    jsr cc4e1
    bcs cdcb7
    jsr sub_cc4ff
    jsr sub_ce2e9
    jsr cc4e1
    bcs cdcb7
    jsr cc520
    lda l0229
    clc
    adc l0009
    sta l0009
    bcc cdd0d
    inc l000a
.cdd0d
    jsr sub_cc56b
    bcc cdce8
    rts

.sub_cdd13
    jsr cc520
    lda #0
    sta l0263
    sta l0264
    lda l020e
    sta l000d
    lda l020f
    sta l000e
    jsr sub_ce0df
    bcc cdd30
    jmp cc622

.cdd30
    beq cdd3c
.cdd32
    lda l000d
    sta l020e
    lda l000e
    sta l020f
.cdd3c
    jsr sub_cde34
    bcs cdd46
    lda #2
    sta l0245,x
.cdd46
    jsr sub_cde66
.cdd49
    lda #<default_brk_handler
    sta brk_v
    lda #>default_brk_handler
    sta brk_v_high
.cdd53
    ldx l0212
    txs
    ldy l020c
    ldx l020a
    lda l0212
    cmp #&81
    bcs cdd67
    jmp cf17a

.cdd67
    lda l0210
    and #&ef
    pha
    lda l0208
    bit l0266
    bpl cdd78
    bit uart_reg_e
.cdd78
    plp
    jmp (l020e)

.stack_underflow_handler
    sta l0208
    stx l020a
    sty l020c
    php
    pla
    sta l0210
    cld
    lda l0005
    cmp #3
    beq cdd94
    jsr sub_cde99
.cdd94
    lda #0
    sta l0225
    lda #&ff
    sta l0212
    jmp cf17a

.sub_cdda1
    jsr sub_ce0df
    bcc cdda9
    jmp cc622

.cdda9
    beq cddc6
    jsr sub_cde34
    bcc cddc4
    jsr sub_cde50
    bcc cddba
    lda #&0a
    jmp cc622

.cddba
    lda l000e
    sta l0243,x
    lda l000d
    sta l0244,x
.cddc4
    clc
    rts

.cddc6
    ldx #0
    jsr sub_cc4ff
    lda #1
    sta l0009
.cddcf
    lda l0243,x
    bne cdddb
    lda l0244,x
    beq cddec
    lda #0
.cdddb
    pha
    jsr sub_cc52d
    jsr sub_cc5b3
    pla
    jsr sub_cc54d
    lda l0244,x
    jsr sub_cc54d
.cddec
    inc l0009
    inx
    inx
    inx
    inx
    cpx #&1d
    bcc cddcf
    jsr cc4e1
    clc
    rts

.sub_cddfb
    jsr cc389
    bcc cde05
    lda #2
    jmp cc622

.cde05
    cmp #&2a ; '*'
    beq cde28
    jsr sub_ce0df
    bcc cde11
    jmp cc622

.cde11
    jsr sub_cde34
    bcc cde1b
    lda #&0b
    jmp cc622

.cde1b
    lda #0
    sta l0243,x
    sta l0244,x
    sta l0246,x
    clc
    rts

.cde28
    ldx #&1f
    lda #0
.loop_cde2c
    sta l0243,x
    dex
    bpl loop_cde2c
    clc
    rts

.sub_cde34
    ldx #0
.loop_cde36
    lda l000e
    cmp l0243,x
    beq cde47
.loop_cde3d
    inx
    inx
    inx
    inx
    cpx #&1d
    bcc loop_cde36
    sec
    rts

.cde47
    lda l000d
    cmp l0244,x
    bne loop_cde3d
    clc
    rts

.sub_cde50
    lda l000d
    pha
    lda l000e
    pha
    lda #0
    sta l000d
    sta l000e
    jsr sub_cde34
    pla
    sta l000e
    pla
    sta l000d
    rts

.sub_cde66
    ldx #&1c
.loop_cde68
    lda l0243,x
    bne cde72
    lda l0244,x
    beq cde7c
.cde72
    lda l0245,x
    beq cde86
    bmi cde7c
    dec l0245,x
.cde7c
    dex
    dex
    dex
    dex
    bpl loop_cde68
    jsr sub_cded5
    rts

.cde86
    jsr sub_cdec8
    lda (l0007),y
    sta l0246,x
    lda #0
    sta (l0007),y
    lda #&ff
    sta l0245,x
    bne cde7c
.sub_cde99
    ldx #&1c
.loop_cde9b
    lda l0243,x
    bne cdea5
    lda l0244,x
    beq cdeaf
.cdea5
    lda l0245,x
    bmi cdeb9
    beq cdeaf
    dec l0245,x
.cdeaf
    dex
    dex
    dex
    dex
    bpl loop_cde9b
    jsr sub_cded5
    rts

.cdeb9
    jsr sub_cdec8
    lda l0246,x
    sta (l0007),y
    lda #0
    sta l0245,x
    beq cdeaf
.sub_cdec8
    lda l0243,x
    sta l0008
    lda l0244,x
    sta l0007
    ldy #0
    rts

.sub_cded5
    lda l0263
    ora l0264
    beq cdef5
    lda l0263
    sta l0007
    lda l0264
    sta l0008
    ldy #0
    lda l0265
    pha
    lda (l0007),y
    sta l0265
    pla
    sta (l0007),y
.cdef5
    rts

.default_brk_handler
    sta l0208
    stx l020a
    sty l020c
    pla
    sta l0210
    cld
    pla
    sec
    sbc #2
    sta l020e
    pla
    sbc #0
    sta l020f
    tsx
    stx l0212
    ldx #&80
    txs
    jsr sub_cde99
    lda l0005
    cmp #3
    beq cdf52
    lda l0263
    cmp l020e
    bne cdf3c
    lda l0264
    cmp l020f
    bne cdf3c
    lda #0
    sta l0263
    sta l0264
    jmp cdf4c

.cdf3c
    lda #<string_at_breakpoint
    sta l0007
    lda #>string_at_breakpoint
    sta l0008
    ldy #&23 ; '#'
    jsr cc4e1
    jsr sub_ccd8a
.cdf4c
    jsr sub_ccda2
    jmp cf15d

.cdf52
    lda l0263
    cmp l020e
    bne cdf6f
    lda l0264
    cmp l020f
    bne cdf6f
    lda #0
    sta l0263
    sta l0264
    lda #&53 ; 'S'
    jmp ceac0

.cdf6f
    lda #&42 ; 'B'
    jmp ceac0

.string_at_breakpoint
    equb &0a, &0d
    equs "         ***  At breakpoint  ***"
    equb &0d

.sub_cdf97
    lda l0225
    bne cdfd3
    lda #&74 ; 't'
    sta l0225
    jsr sub_cc555
    lda #1
    sta l000b
    lda #0
    sta l000c
    sta l0263
    sta l0264
    jsr sub_ce180
    bcc cdfba
    jmp cc622

.cdfba
    lda l000b
    ora l000c
    bne cdfc1
    rts

.cdfc1
    lda l0009
    sta l020e
    lda l000a
    sta l020f
    lda l0221
    sta l0004
    jsr sub_ccd8a
.cdfd3
    jsr sub_cc560
    jmp cdfdc

.cdfd9
    jsr cc520
.cdfdc
    lda #<alt_nmi_handler
    sta nmi_v
    lda #>alt_nmi_handler
    sta nmi_v_high
    lda #0
    sta uart_reg_4
    lda #9
    sta uart_reg_7
    lda #0
    sta uart_reg_6
    bit uart_reg_f
    lda #8
    sta uart_reg_5
    lda l0266
    ora #&80
    sta l0266
    jmp cdd53

.alt_nmi_handler
    bit uart_reg_f
    sta l0208
    stx l020a
    sty l020c
    pla
    sta l0210
    cld
    pla
    sta l0231
    pla
    sta l0232
    lda #0
    sta uart_reg_5
    tsx
    stx l0212
    cpx #&81
    bcs ce031
    jmp cdd94

.ce031
    lda l0231
    sta l020e
    lda l0232
    sta l020f
    lda l0005
    cmp #3
    bne ce048
    lda #&53 ; 'S'
    jmp ceac0

.ce048
    jsr sub_ccda2
    jsr sub_cc56b
    bcc cdfd9
    lda l0004
    cmp #2
    bne ce059
    jsr cc520
.ce059
    jmp cf15d

.sub_ce05c
    lda l0225
    bne ce080
    lda #&6a ; 'j'
    sta l0225
    jsr sub_ce0df
    bcs ce0c7
    beq ce077
    lda l000d
    sta l020e
    lda l000e
    sta l020f
.ce077
    lda l0221
    sta l022a
    jsr sub_ccd8a
.ce080
    lda l022a
    sta l0004
.ce085
    lda l020e
    sta l0007
    lda l020f
    sta l0008
    ldy #0
    lda (l0007),y
    cmp #&20 ; ' '
    beq ce0a2
    lda #1
    sta l0222
    sty l0223
    jmp cdfdc

.ce0a2
    clc
    lda l0007
    adc #3
    sta l0263
    lda l0008
    adc #0
    sta l0264
    jsr sub_cded5
    lda l0266
    and #&7f
    sta l0266
    lda #0
    sta uart_reg_5
    bit uart_reg_f
    jmp cdd49

.ce0c7
    jmp cc622

.irq_brk_handler
    sta l000f
    pla
    pha
    and #&10
    bne ce0d7
    lda l000f
    jmp (irq_v)

.ce0d7
    lda l000f
    jmp (brk_v)

.nmi_handler
    jmp (nmi_v)

.sub_ce0df
    txa
    pha
    jsr cc389
    bcs ce0f9
    cmp #&72 ; 'r'
    beq ce109
    cmp #&22 ; '"'
    beq ce155
    jsr sub_ce1ec
    bcs ce0ff
.ce0f3
    pla
    tax
    clc
    lda #&ff
    rts

.ce0f9
    pla
    tax
    clc
    lda #0
    rts

.ce0ff
    sta l0231
    pla
    tax
    lda l0231
    sec
    rts

.ce109
    iny
    jsr sub_ce11c
    bcs ce0ff
    lda l0208,x
    sta l000d
    lda l0209,x
    sta l000e
    jmp ce0f3

.sub_ce11c
    jsr sub_cc380
    bcs ce12c
    ldx #&0a
.loop_ce123
    cmp le174,x
    beq ce130
    dex
    dex
    bpl loop_ce123
.ce12c
    lda #3
    sec
    rts

.ce130
    jsr sub_cc380
    bcs ce140
    cpx #8
    bcs ce145
    cmp le175,x
    bne ce12c
    clc
    rts

.ce140
    cpx #6
    bcs ce12c
    rts

.ce145
    ldx #8
    cmp le175,x
    beq ce153
    inx
    inx
    cmp le175,x
    bne ce12c
.ce153
    clc
    rts

.ce155
    iny
    lda #0
    sta l000d
    sta l000e
.loop_ce15c
    jsr sub_cc380
    bcs ce170
    cmp #&22 ; '"'
    beq ce0f3
    pha
    lda l000d
    sta l000e
    pla
    sta l000d
    jmp loop_ce15c

.ce170
    lda #8
    bne ce0ff
.le174
    equb &61
.le175
    equs " x y pcsrsp"

.sub_ce180
    jsr cc389
    bcs ce1b6
    cmp #&3b ; ';'
    beq ce1a6
    jsr sub_ce0df
    bcs ce1ba
    lda l000d
    sta l0009
    lda l000e
    sta l000a
    jsr cc389
    bcs ce1b6
    cmp #&3b ; ';'
    beq ce1a6
    dey
    lda (l0007),y
    cmp #&20 ; ' '
    bne ce1b8
.ce1a6
    iny
    jsr sub_ce0df
    bcs ce1ba
    beq ce1b8
    lda l000d
    sta l000b
    lda l000e
    sta l000c
.ce1b6
    clc
    rts

.ce1b8
    lda #2
.ce1ba
    sec
    rts

.sub_ce1bc
    cmp #&30 ; '0'
    bcc ce1dc
    cmp #&3a ; ':'
    bcc ce1d8
    cmp #&41 ; 'A'
    bcc ce1dc
    cmp #&61 ; 'a'
    bcs ce1d2
    cmp #&5b ; '['
    bcs ce1dc
    adc #&20 ; ' '
.ce1d2
    cmp #&67 ; 'g'
    bcs ce1dc
    sbc #&56 ; 'V'
.ce1d8
    and #&0f
    clc
    rts

.ce1dc
    lda #6
    sec
    rts

.sub_ce1e0
    cmp #&30 ; '0'
    bcc ce1dc
    cmp #&3a ; ':'
    bcs ce1dc
    and #&0f
    clc
    rts

.sub_ce1ec
    ldx #0
    stx l000d
    stx l000e
.loop_ce1f2
    lda (l0007),y
    jsr sub_ce1bc
    bcs ce211
    asl l000d
    rol l000e
    asl l000d
    rol l000e
    asl l000d
    rol l000e
    asl l000d
    rol l000e
    ora l000d
    sta l000d
    iny
    inx
    bne loop_ce1f2
.ce211
    cpx #1
    bcs ce217
    sec
    rts

.ce217
    cpx #5
    bcc ce21d
    ldx #4
.ce21d
    clc
    rts

.sub_ce21f
    ora #&30 ; '0'
    cmp #&3a ; ':'
    bcc ce227
    adc #6
.ce227
    rts

.sub_ce228
    txa
    pha
    iny
    iny
    ldx #4
    bne ce234
.sub_ce230
    txa
    pha
    ldx #2
.ce234
    iny
    sty l0220
.loop_ce238
    lda l000d
    and #&0f
    lsr l000e
    ror l000d
    lsr l000e
    ror l000d
    lsr l000e
    ror l000d
    lsr l000e
    ror l000d
    jsr sub_ce21f
    sta (l0007),y
    dey
    dex
    bne loop_ce238
    pla
    tax
    ldy l0220
    iny
    rts

.sub_ce25c
    sed
    lda #0
    sta l0237
    sta l0238
    sta l0239
    ldx #&10
.ce26a
    asl l000d
    rol l000e
    lda l0237
    adc l0237
    sta l0237
    lda l0238
    adc l0238
    sta l0238
    lda l0239
    adc l0239
    sta l0239
    dex
    bne ce26a
    cld
    rts

.sub_ce28e
    ldx #0
    stx l000d
    stx l000e
.ce294
    lda l0237
    and #&0f
    beq ce2ae
    tay
.loop_ce29c
    clc
    lda l000d
    adc le2cc,x
    sta l000d
    lda l000e
    adc le2cd,x
    sta l000e
    dey
    bne loop_ce29c
.ce2ae
    jsr sub_ce2b9
    inx
    inx
    cpx #&0a
    bcc ce294
    clc
    rts

.sub_ce2b9
    jsr sub_ce2c2
    jsr sub_ce2c2
    jsr sub_ce2c2
.sub_ce2c2
    lsr l0239
    ror l0238
    ror l0237
    rts

.le2cc
    equb 1
.le2cd
    equb   0, &0a,   0, &64,   0, &e8,   3, &10, &27

.sub_ce2d6
    jsr sub_ce2df
    jsr sub_ce2df
    jsr sub_ce2df
.sub_ce2df
    asl l0237
    rol l0238
    rol l0239
    rts

.sub_ce2e9
    ldx #&17
    lda #&20 ; ' '
.loop_ce2ed
    sta l0300,x
    dex
    bpl loop_ce2ed
    jsr sub_ce2ff
    jsr sub_ce4fd
    ldy #&17
    ldx l0229
    rts

.sub_ce2ff
    ldx #5
    stx l0228
    ldy #0
    sty l0229
    jsr sub_ce51b
    ldx #&68 ; 'h'
.loop_ce30e
    cmp le555,x
    bne ce31e
    ldx #2
    lda #&3f ; '?'
.loop_ce317
    sta l030b,x
    dex
    bpl loop_ce317
    rts

.ce31e
    dex
    bpl loop_ce30e
    tay
    and #&0f
    cmp #8
    bne ce332
    tya
    and #&f0
    lsr a
    lsr a
.ce32d
    tax
    jsr sub_ce524
    rts

.ce332
    cmp #&0a
    bne ce35a
    cpy #&8a
    bcs ce349
    lda #&41 ; 'A'
    sta l0310
    tya
    and #&f0
    lsr a
    lsr a
    lsr a
    adc #&40 ; '@'
    bne ce32d
.ce349
    cpy #&ea
    bcs ce356
    tya
    and #&f0
    lsr a
    lsr a
    adc #&30 ; '0'
    bne ce32d
.ce356
    lda #&64 ; 'd'
    bne ce32d
.ce35a
    cmp #0
    beq ce361
    jmp ce3c4

.ce361
    tya
    and #&90
    bne ce374
    tya
    cmp #&20 ; ' '
    beq ce3c1
    bcc ce370
    lsr a
    lsr a
    lsr a
.ce370
    adc #&68 ; 'h'
    bne ce32d
.ce374
    and #&10
    bne ce37b
    jmp ce402

.ce37b
    tya
    and #&e0
    lsr a
    lsr a
    lsr a
    adc #&78 ; 'x'
    tax
    jsr sub_ce524
    lda l000a
    sta l0231
    jsr sub_ce51b
    sta l0232
    adc l0009
    pha
    bit l0232
    bmi ce3a2
    bcc ce39f
    inc l0231
.ce39f
    jmp ce3a7

.ce3a2
    bcs ce3a7
    dec l0231
.ce3a7
    pla
    sta l0232
    inc l0232
    bne ce3b3
    inc l0231
.ce3b3
    ldx #5
    lda l0231
    jsr ce539
    lda l0232
    jmp ce539

.ce3c1
    eor #&2c ; ','
    tay
.ce3c4
    cmp #&0c
    bne ce402
    tya
    bmi ce402
    cmp #&6c ; 'l'
    bne ce3dd
    and #&4c ; 'L'
    ldx #&28 ; '('
    stx l0310
    inx
    stx l0315
    inc l0228
.ce3dd
    and #&f0
    lsr a
    lsr a
    lsr a
    adc #&98
    tax
    jsr sub_ce524
.ce3e8
    ldx l0228
    jsr sub_ce51b
    pha
    jsr sub_ce51b
    jsr ce539
    pla
    jmp ce539

.ce3f9
    ldx l0228
    jsr sub_ce51b
    jmp ce539

.ce402
    and #1
    beq ce470
    tya
    and #&e0
    lsr a
    lsr a
    lsr a
    adc #&a4
    jsr ce32d
    tya
    asl a
    asl a
    sta l00f1
    clv
    bit l00f1
    asl a
    asl a
    cmp #&50 ; 'P'
    bne ce427
    bvc ce3f9
    jsr ce3f9
    jmp ce4e6

.ce427
    cmp #&d0
    bne ce433
    bvc ce3e8
    jsr ce3e8
    jmp ce4e6

.ce433
    cmp #&90
    bne ce44c
    bvs ce446
.ce439
    lda #&23 ; '#'
    ldx l0228
    sta l030b,x
    inc l0228
    bne ce3f9
.ce446
    jsr ce3e8
    jmp ce4e2

.ce44c
    ldx #&28 ; '('
    stx l0310
    inc l0228
    inx
    php
    jsr ce3f9
    plp
    bvc ce467
    lda #&29 ; ')'
    sta l030b,x
    inc l0228
    jmp ce4e2

.ce467
    jsr ce4e6
    lda #&29 ; ')'
    sta l030b,x
    rts

.ce470
    tya
    and #6
    cmp #6
    bne ce4a9
    tya
    and #&e0
    lsr a
    lsr a
    lsr a
    adc #&c4
    jsr ce32d
    tya
    bpl ce49f
    cmp #&c6
    bcs ce49f
    tya
    and #&10
    beq ce494
    jsr ce494
    jmp ce4e2

.ce494
    tya
    and #8
    beq ce49c
.ce499
    jmp ce3e8

.ce49c
    jmp ce3f9

.ce49f
    and #&10
    beq ce494
    jsr ce494
    jmp ce4e6

.ce4a9
    tya
    bmi ce4b3
    ldx #&9c
    jsr sub_ce524
    bne ce49c
.ce4b3
    cmp #&a2
    bne ce4bf
    ldx #&d8
    jsr sub_ce524
    jmp ce439

.ce4bf
    and #&60 ; '`'
    lsr a
    lsr a
    lsr a
    adc #&e4
    jsr ce32d
    tya
    and #&10
    beq ce4d4
    jsr ce4d4
    jmp ce4e6

.ce4d4
    tya
    and #&0f
    cmp #4
    bcc ce4df
    beq ce49c
    bcs ce499
.ce4df
    jmp ce439

.ce4e2
    lda #&59 ; 'Y'
    bne ce4e8
.ce4e6
    lda #&58 ; 'X'
.ce4e8
    ldx l0228
    sta l030c,x
    lda #&2c ; ','
    sta l030b,x
    inc l0228
    inc l0228
    ldx l0228
    rts

.sub_ce4fd
    ldx #0
    jsr sub_cc4ff
.loop_ce502
    sty l0220
    txa
    tay
    lda (l0009),y
    ldy l0220
    jsr sub_cc54d
    lda #1
    jsr cc53a
    inx
    cpx l0229
    bcc loop_ce502
    rts

.sub_ce51b
    ldy l0229
    lda (l0009),y
    inc l0229
    rts

.sub_ce524
    sty l0231
    ldy #0
.loop_ce529
    lda le5be,x
    sta l030b,y
    inx
    iny
    cpy #3
    bcc loop_ce529
    ldy l0231
    rts

.ce539
    pha
    and #&f0
    lsr a
    lsr a
    lsr a
    lsr a
    jsr sub_ce21f
    sta l030b,x
    inx
    pla
    and #&0f
    jsr sub_ce21f
    sta l030b,x
    inx
    stx l0228
    rts

.le555
    equb   2,   3,   4,   7, &0b, &0c, &0f, &12, &13, &14, &17, &1a, &1b, &1c
    equb &1f, &22, &23, &27, &2b, &2f, &32, &33, &34, &37, &3a, &3b, &3c, &3f
    equb &42, &43, &44, &47, &4b, &4f, &52, &53, &54, &57, &5a, &5b, &5c, &5f
    equb &62, &63, &64, &67, &6b, &6f, &72, &73, &74, &77, &7a, &7b, &7c, &7f
    equb &80, &82, &83, &87, &89, &8b, &8f, &92, &93, &97, &9b, &9c, &9e, &9f
    equb &a3, &a7, &ab, &af, &b2, &b3, &b7, &bb, &bf, &c2, &c3, &c7, &cb, &cf
    equb &d2, &d3, &d4, &d7, &da, &db, &dc, &df, &e2, &e3, &e7, &eb, &ef, &f2
    equb &f3, &f4, &f7, &fa, &fb, &fc, &ff
.le5be
    equs "PHP"
    equb &ff
    equs "CLC"
    equb &ff
    equs "PLP"
    equb &ff
    equs "SEC"
    equb &ff
    equs "PHA"
    equb &ff
    equs "CLI"
    equb &ff
    equs "PLA"
    equb &ff
    equs "SEI"
    equb &ff
    equs "DEY"
    equb &ff
    equs "TYA"
    equb &ff
    equs "TAY"
    equb &ff
    equs "CLV"
    equb &ff
    equs "INY"
    equb &ff
    equs "CLD"
    equb &ff
    equs "INX"
    equb &ff
    equs "SED"
    equb &ff
    equs "ASL"
    equb &ff
    equs "ROL"
    equb &ff
    equs "LSR"
    equb &ff
    equs "ROR"
    equb &ff
    equs "TXA"
    equb &ff
    equs "TXS"
    equb &ff
    equs "TAX"
    equb &ff
    equs "TSX"
    equb &ff
    equs "DEX"
    equb &ff
    equs "NOP"
    equb &ff
    equs "BRK"
    equb &ff, &ff, &ff, &ff, &ff
    equs "RTI"
    equb &ff
    equs "RTS"
    equb &ff
    equs "BPL"
    equb &ff
    equs "BMI"
    equb &ff
    equs "BVC"
    equb &ff
    equs "BVS"
    equb &ff
    equs "BCC"
    equb &ff
    equs "BCS"
    equb &ff
    equs "BNE"
    equb &ff
    equs "BEQ"
    equb &ff
    equs "JSR"
    equb &ff
    equs "BIT"
    equb &ff
    equs "JMP"
    equb &ff
    equs "ORA"
    equb &ff
    equs "AND"
    equb &ff
    equs "EOR"
    equb &ff
    equs "ADC"
    equb &ff
    equs "STA"
    equb &ff
    equs "LDA"
    equb &ff
    equs "CMP"
    equb &ff
    equs "SBC"
    equb &ff
    equs "ASL"
    equb &ff
    equs "ROL"
    equb &ff
    equs "LSR"
    equb &ff
    equs "ROR"
    equb &ff
    equs "STX"
    equb &ff
    equs "LDX"
    equb &ff
    equs "DEC"
    equb &ff
    equs "INC"
    equb &ff
    equs "STY"
    equb &ff
    equs "LDY"
    equb &ff
    equs "CPY"
    equb &ff
    equs "CPX"
    equb &ff

.ce6b2
    lda #3
    sta l0005
    sta l0004
    jsr sub_cc6c2
    lda #&18
    jsr sub_cec2b
    lda l020e
    sta l021a
    lda l020f
    sta l021b
.ce6cc
    jsr cc6dc
.ce6cf
    ldx #7
.loop_ce6d1
    cmp le6eb,x
    beq ce6db
    dex
    bpl loop_ce6d1
    bmi ce6cc
.ce6db
    txa
    asl a
    tax
    lda le6f3,x
    sta l0012
    lda le6f4,x
    sta l0013
    jmp (l0012)

.le6eb
    equs "MPLSGR+-"
.le6f3
le6f4 = le6f3+1
    equw     ce826,     ce8ca, sub_ce977, sub_cea65, sub_ce703,     ce73f
    equw     ce826,     ce826

.sub_ce703
    lda #4
    jsr sub_ceafc
    pha
    lda l021a
    sta l000d
    sta l020e
    lda l021b
    sta l000e
    sta l020f
    pla
    cmp #&47 ; 'G'
    bne ce727
    jsr sub_cec11
    jsr cc520
    jmp cdd32

.ce727
    cmp #&2b ; '+'
    beq ce732
    cmp #&2d ; '-'
    bne ce6cf
    jmp ce085

.ce732
    lda #<default_brk_handler
    sta brk_v
    lda #>default_brk_handler
    sta brk_v_high
    jmp cdfdc

.ce73f
    ldx l022f
    lda le81a,x
    jsr sub_cec2b
    ldx l022f
    beq ce787
    lda le820,x
    tay
    lda l0208,y
    sta l0233
    jsr sub_ceb34
    pha
    lda l0233
    sta l0208,y
    pla
.ce762
    cmp #&2b ; '+'
    bne ce777
    inc l022f
    lda l022f
    cmp #6
    bcc ce73f
    lda #0
    sta l022f
    beq ce73f
.ce777
    cmp #&2d ; '-'
    bne ce7ac
    dec l022f
    bpl ce73f
    lda #5
    sta l022f
    bne ce73f
.ce787
    lda l020f
    sta l0234
    lda l020e
    sta l0233
    lda #4
    sta l0235
    jsr sub_ceb6d
    pha
    lda l0234
    sta l020f
    lda l0233
    sta l020e
    pla
    jmp ce762

.ce7ac
    cmp #&52 ; 'R'
    beq ce7b3
    jmp ce6cf

.ce7b3
    jsr sub_cec11
    lda #&62 ; 'b'
    sta l0300
    ldy l0230
    iny
    tya
    dey
    ora #&30 ; '0'
    sta l0301
    tya
    asl a
    asl a
    tay
    lda l0243,y
    sta l0234
    lda l0244,y
    sta l0233
    lda #4
    sta l0235
    jsr sub_ceb6d
    pha
    lda l0234
    sta l0243,y
    lda l0233
    sta l0244,y
    pla
    cmp #&2b ; '+'
    bne ce7fe
    inc l0230
    lda l0230
    and #7
    sta l0230
    jmp ce7b3

.ce7fe
    cmp #&2d ; '-'
    bne ce810
    dec l0230
    lda l0230
    and #7
    sta l0230
    jmp ce7b3

.ce810
    cmp #&52 ; 'R'
    beq ce817
    jmp ce6cf

.ce817
    jmp ce73f

.le81a
    equs "9=BEHL"
.le820
    equb   6,   0,   2,   4,   8, &0a

.ce826
    lda #0
    jsr sub_ceafc
    cmp #&4d ; 'M'
    beq ce846
    cmp #&2b ; '+'
    bne ce839
    jsr sub_ce8b1
    jmp ce826

.ce839
    cmp #&2d ; '-'
    beq ce840
    jmp ce6cf

.ce840
    jsr sub_ce8b8
    jmp ce826

.ce846
    jsr sub_cc4ff
    lda (l0009),y
    sta l0233
    lda #&61 ; 'a'
    sta (l0007),y
    iny
    lda l000a
    jsr sub_cc54d
    lda l0009
    jsr sub_cc54d
    lda l000a
    cmp #&20 ; ' '
    bcs ce867
    cmp #4
    bcs ce86e
.ce867
    lda #&2e ; '.'
    sta (l0007),y
    iny
    bne ce873
.ce86e
    lda #1
    jsr cc53a
.ce873
    lda l0233
.ce876
    jsr sub_cc54d
    jsr sub_cec03
    jsr sub_cec1c
    bcs ce89a
    jsr sub_ce1bc
    sta l0233
    ldy #0
    lda (l0009),y
    asl a
    asl a
    asl a
    asl a
    ora l0233
    sta (l0009),y
    lda (l0009),y
    ldy #6
    bne ce876
.ce89a
    cmp #&2b ; '+'
    bne ce8a4
    jsr sub_ce8b1
    jmp ce846

.ce8a4
    cmp #&2d ; '-'
    bne ce8ae
    jsr sub_ce8b8
    jmp ce846

.ce8ae
    jmp ce6cf

.sub_ce8b1
    jsr sub_cc58b
    jsr sub_ce8bf
    rts

.sub_ce8b8
    jsr sub_cc592
    jsr sub_ce8bf
    rts

.sub_ce8bf
    lda l0009
    sta l0216
    lda l000a
    sta l0217
    rts

.ce8ca
    lda #2
    jsr sub_ceafc
    cmp #&50 ; 'P'
    beq ce8ea
    cmp #&2b ; '+'
    bne ce8dd
    jsr sub_ce95e
    jmp ce8ca

.ce8dd
    cmp #&2d ; '-'
    beq ce8e4
    jmp ce6cf

.ce8e4
    jsr sub_ce965
    jmp ce8ca

.ce8ea
    jsr sub_cc4ff
    lda (l0009),y
    sta l0233
    lda #&70 ; 'p'
    sta (l0007),y
    iny
    lda l000a
    jsr sub_cc54d
    lda l0009
    jsr sub_cc54d
    lda #1
    jsr cc53a
    lda l0233
.ce909
    jsr sub_cc54d
    jsr sub_cec03
    jsr sub_cec1c
    bcs ce944
    sta l0306
    jsr sub_ce1bc
    sta l0233
    lda #&20 ; ' '
    sta l0307
    jsr sub_cec03
    jsr sub_cec1c
    bcs ce944
    jsr sub_ce1bc
    sta l0231
    lda l0233
    asl a
    asl a
    asl a
    asl a
    ora l0231
    ldy #0
    sta (l0009),y
    lda (l0009),y
    ldy #6
    bne ce909
.ce944
    cmp #&2b ; '+'
    bne ce94e
    jsr sub_ce95e
    jmp ce8ea

.ce94e
    cmp #&2d ; '-'
    bne ce958
    jsr sub_ce965
    jmp ce8ea

.ce958
    jmp ce6cf

.maybe_unreachable_e95b
    jmp ce6cc

.sub_ce95e
    jsr sub_cc58b
    jsr sub_ce96c
    rts

.sub_ce965
    jsr sub_cc592
    jsr sub_ce96c
    rts

.sub_ce96c
    lda l0009
    sta l0218
    lda l000a
    sta l0219
    rts

.sub_ce977
    lda #<string_load_t1_t2_cas
    sta l0009
    lda #>string_load_t1_t2_cas
    sta l000a
    lda #&4c ; 'L'
    sta l0235
    lda l022e
    jsr sub_cebb4
    bcc ce98f
    jmp ce6cf

.ce98f
    sta l022e
    cmp #3
    beq ce9fe
    lda #&1e
    jsr sub_cec2b
    lda l022e
    cmp #2
    beq ce9cd
    sta l0232
    jsr sub_ccf25
    lda l0007
    adc l0235
    sta l0235
    lda l0008
    adc #0
    sta l0236
    jsr sub_cc4ff
    lda #&26 ; '&'
    jsr sub_cec2b
    ldy #4
    lda l0236
    jsr sub_cc54d
    lda l0235
    jmp ce9e0

.ce9cd
    jsr sub_cd108
    lda #&26 ; '&'
    jsr sub_cec2b
    ldy #4
    lda l021f
    jsr sub_cc54d
    lda l021e
.ce9e0
    jsr sub_cc54d
    jsr sub_cec03
    jsr ce6cc
.string_load_t1_t2_cas
    equb 4
    equs "LOAd  T1  T2 CAS SET"

.ce9fe
    lda #0
    sta l0236
.cea03
    asl a
    tax
    lda leca6,x
    sta l0009
    lda leca7,x
    sta l000a
    lda #&53 ; 'S'
    sta l0235
    ldx l0236
    lda l02c0,x
    ldy #0
    jsr sub_cebb4
    bcc cea24
    jmp ce6cf

.cea24
    ldx l0236
    sta l02c0,x
    inc l0236
    lda l0236
    cmp #6
    bcc cea03
    lda #&31 ; '1'
    jsr sub_cec2b
    ldx #6
    jsr sub_cea4b
    lda #&35 ; '5'
    jsr sub_cec2b
    ldx #7
    jsr sub_cea4b
    jmp ce6b2

.sub_cea4b
    lda l02c0,x
    jsr sub_ceb34
    cmp #&53 ; 'S'
    beq cea5e
    cmp #&4c ; 'L'
    beq cea5e
    pla
    pla
    jmp ce6cf

.cea5e
    lda l0233
    sta l02c0,x
    rts

.sub_cea65
    lda #1
    sta l0235
    jsr sub_cec11
    lda #&66 ; 'f'
    sta l0300
    ldx #6
    jsr sub_ceb0c
    cmp #&53 ; 'S'
    beq cea7e
    jmp ce6cf

.cea7e
    lda #&0a
    jsr cc6cf
    lda #&74 ; 't'
    sta l0300
    ldx #8
    jsr sub_ceb0c
    cmp #&53 ; 'S'
    beq cea94
    jmp ce6cf

.cea94
    lda l021f
    cmp l021d
    bcc ceabb
    bne ceaa6
    lda l021c
    cmp l021e
    bcs ceabb
.ceaa6
    lda #&2a ; '*'
    jsr sub_cec2b
    ldx #3
.loop_ceaad
    lda l021c,x
    sta l0009,x
    dex
    bpl loop_ceaad
    jsr sub_cd1b3
    jmp ce6b2

.ceabb
    lda #4
    jmp cc622

.ceac0
    sta l0236
    jsr sub_cec11
    lda l020e
    sta l021a
    lda l020f
    sta l021b
    lda #&50 ; 'P'
    sta l0300
    lda #&63 ; 'c'
    sta l0301
    lda l0236
    sta l0307
    jsr sub_cc4ff
    ldy #2
    lda l020f
    jsr sub_cc54d
    lda l020e
    jsr sub_cc54d
    jsr sub_cec03
    jsr cc6dc
    jmp ce727

.sub_ceafc
    ldy #4
    sty l0235
    sta l0236
    asl a
    asl a
    jsr sub_cec2b
    ldx l0236
.sub_ceb0c
    stx l0236
    lda l0216,x
    sta l0233
    lda l0217,x
    sta l0234
    jsr sub_ceb6d
    pha
    ldx l0236
    lda l0234
    sta l0217,x
    sta l000a
    lda l0233
    sta l0216,x
    sta l0009
    pla
    rts

.sub_ceb34
    sta l0233
    tya
    pha
    jsr sub_cc4ff
.ceb3c
    ldy #6
    lda l0233
    jsr sub_cc54d
    jsr sub_cec03
    jsr sub_cec1c
    bcs ceb64
    jsr sub_ce1bc
    asl l0233
    asl l0233
    asl l0233
    asl l0233
    ora l0233
    sta l0233
    jmp ceb3c

.ceb64
    sta l0231
    pla
    tay
    lda l0231
    rts

.sub_ceb6d
    tya
    pha
.ceb6f
    jsr sub_cc4ff
    ldy l0235
    lda l0234
    jsr sub_cc54d
    lda l0233
    jsr sub_cc54d
    jsr sub_cec03
    jsr sub_cec1c
    bcs cebab
    jsr sub_ce1bc
    sta l0231
    lda l0233
    asl a
    rol l0234
    asl a
    rol l0234
    asl a
    rol l0234
    asl a
    rol l0234
    ora l0231
    sta l0233
    jmp ceb6f

.cebab
    sta l0231
    pla
    tay
    lda l0231
    rts

.sub_cebb4
    sta l0234
    ldy #0
    lda (l0009),y
    sta l0233
    ldx #0
    iny
.loop_cebc1
    lda (l0009),y
    sta l0300,x
    inx
    iny
    cpx #4
    bne loop_cebc1
.cebcc
    lda l0234
    asl a
    asl a
    clc
    adc #5
    tay
    ldx #0
.loop_cebd7
    lda (l0009),y
    sta l0304,x
    iny
    inx
    cpx #4
    bne loop_cebd7
    jsr sub_cec03
    jsr sub_cec1c
    bcc cebf6
    cmp l0235
    beq cebf1
    sec
    rts

.cebf1
    lda l0234
    clc
    rts

.cebf6
    jsr sub_ce1bc
    cmp l0233
    bcs cebcc
    sta l0234
    bcc cebcc
.sub_cec03
    jsr sub_cc4ff
    lda #&0a
    jsr cc6cf
    ldy #8
    jsr cc4e1
    rts

.sub_cec11
    ldy #7
    lda #&20 ; ' '
.loop_cec15
    sta l0300,y
    dey
    bpl loop_cec15
    rts

.sub_cec1c
    jsr cc6dc
    cmp #&47 ; 'G'
    bcs cec29
    cmp #&30 ; '0'
    bcc cec29
    clc
    rts

.cec29
    sec
    rts

.sub_cec2b
    sta l0231
    tya
    pha
    txa
    pha
    jsr sub_cec11
    lda l0231
    tay
    ldx #0
.loop_cec3b
    lda lec53,y
    beq cec49
    sta l0300,x
    iny
    inx
    cpx #8
    bcc loop_cec3b
.cec49
    ldy #8
    jsr sub_cec03
    pla
    tax
    pla
    tay
    rts

.lec53
    equs "ADR     PRT     GO      READY"
    equb 0
    equs "LOADING END"
    equb 0
    equs "SAVING"
    equb 0
    equs "BSP"
    equb 0
    equs "BSE"
    equb 0
    equs "rPC"
    equb 0
    equs "rACC"
    equb   0, &72, &58,   0, &72, &59,   0
    equs "rSR"
    equb 0
    equs "rSP 01"
    equb 0
.leca6
    equb &b2
.leca7
    equb &ec, &d7, &ec, &f4, &ec,   1, &ed, &0e, &ed, &1b, &ed,   8
    equs "BAUd  75 110 300 6001200240048009600"
    equb 6
    equs "PaDt N-8 N-7 O-8 O-7 E-8 E-7"
    equb 2
    equs "STOp   1   2"
    equb 2
    equs "ECHo OFF  ON"
    equb 2
    equs "AuLF OFF  ON"
    equb 2
    equs "BFLg OFF  ON"
.led28
    equs "abcdeghijklmprst["
.led39
led3a = led39+1
    equw sub_cd2e9, sub_cdda1, sub_ccb6c, sub_cdcba, sub_ccd3c, sub_cdd13
    equw sub_cd2ff, sub_cd226, sub_ce05c, sub_cddfb, sub_ccefe, sub_cce5b
    equw sub_cd2af, sub_ccd53, sub_cd167, sub_cdf97, sub_cccd0
.led5b
    equb &74, &31,   0,   0, &74, &32,   0,   0, &70,   0,   0,   0, &6b, &64
    equb   0,   0
    equs "cas"
    equb 0
.led6f
    equw            rti_only,            rti_only, default_brk_handler
    equb   0,   0,   0,   0,   0,   0,   0,   0,   0,   4, &24,   0, &ff,   1
    equb &ff, &1f,   0,   4,   0, &90,   0,   4,   0,   4, &ff,   4
.led8f
    equb   7,   0,   1,   1,   1,   1,   8, &7f
.led97
    equb   7,   0,   1,   1,   1,   1,   8, &7f,   0,   0,   0,   0,   1,   1
    equb   8,   8,   0,   0,   0,   0,   0,   1,   8,   8,   0,   0,   0,   0
    equb   0,   1,   0,   0
.ledb7
    equb   0, &86, &22, &63, &70, &b2, &ff,   2, &39, &0f, &3c, &46,   4, &40
    equb &80, &52, &3f,   6, &5b, &4f, &66, &6d, &7d,   7, &7f, &6f, &82, &84
    equb &46, &48, &70, &d3, &5f, &77, &7c, &39, &5e, &79, &71, &3d, &74,   6
    equb &1e, &75, &38, &37, &37, &3f, &73, &67, &31, &6d, &78, &3e, &3e, &14
    equb &76, &6e, &5b, &39, &64, &0f, &23,   8, &71, &82, &84, &46, &48, &70
    equb &d3, &5f, &77, &7c, &39, &5e, &79, &71, &3d, &74,   6, &1e, &75, &38
    equb &37, &54, &3f, &73, &67, &31, &6d, &78, &3e, &3e, &14, &76, &6e, &5b
.string_serial_params
    equs "Baud Rate Par/Data  Stop Bits Echo      Auto LF   BSp mode  BSp ch"
    equs "ar  BSp Echo  "
.lee69
lee6a = lee69+1
    equw  string_error_0,  string_error_1,  string_error_2,  string_error_3
    equw  string_error_4,  string_error_5,  string_error_6,  string_error_7
    equw  string_error_8,  string_error_9, string_error_10, string_error_11
    equw string_error_12, string_error_13, string_error_14, string_error_15
    equw string_error_16, string_error_17, string_error_18, string_error_19
    equw string_error_20, string_error_21, string_error_22, string_error_23
    equw string_error_24, string_error_25, string_error_26
.string_error_1
    equs "  Unknown command"
    equb &0d
.string_error_2
    equs "  Syntax error"
    equb &0d
.string_error_3
    equs "  Unknown register name"
    equb &0d
.string_error_4
    equs "  Value out of range"
    equb &0d
.string_error_5
    equs "  Device name unknown"
    equb &0d
.string_error_6
    equs "  Invalid number"
    equb &0d
.string_error_8
    equs "  Missing ", '"'
    equb &0d
.string_error_10
    equs "  No more breakpoints can be set"
    equb &0d
.string_error_11
    equs "  No breakpoints set"
    equb &0d
.string_error_12
    equs "  Memory limit exceeded"
    equb &0d
.string_error_20
    equs "  Device not ready"
    equb &0d
.string_error_21
    equs "  Read error"
    equb &0d
.string_error_22
    equs "  Write error"
    equb &0d
.string_error_23
    equs "  Checksum error"
    equb &0d
.string_error_24
    equs "  Unknown 'S' record type"
    equb &0d
.string_error_25
    equs "  Escape character detected"
    equb &0d
.string_error_26
    equs "  Invalid I/O function"
    equb &0d
.string_error_0
.string_error_7
.string_error_9
.string_error_13
.string_error_14
.string_error_15
.string_error_16
.string_error_17
.string_error_18
.string_error_19
    equb &0d
.string_lj_systems_banner
    equb &0c
    equs "LJ Technical Systems MAC3 6502  V2.2"
    equb &0d, &0a

.reset_handler
    sei
    cld
    lda #0
    sta l0266
    ldx #&80
    txs
    lda uart_reg_d_input_ports
    and #&10
    beq cf054
    lda l0267
    bne cf0aa
    jsr abi_ledon
.cf03b
    dex
    nop
    bne cf03b
    dec l0267
    bne cf03b
    jsr abi_ledoff
    jsr sub_cde99
    jmp cf0dd

.cf04d
    sta (l0009),y
    cmp (l0009),y
    jmp cf04d

.cf054
    lda l0268
    cmp #&34 ; '4'
    bne cf062
    lda l0269
    cmp #&12
    beq cf092
.cf062
    lda #&40 ; '@'
    sta uart_reg_e
    lda #&10
    sta l0009
    lda #0
    sta l000a
    lda #&ff
    sta l000b
    lda #&1f
    sta l000c
    ldy #0
.loop_cf079
    lda #&55 ; 'U'
    sta (l0009),y
    cmp (l0009),y
    bne cf04d
    lda #&aa
    sta (l0009),y
    cmp (l0009),y
    bne cf04d
    lda #&ff
    sta (l0009),y
    jsr sub_cc59d
    bcc loop_cf079
.cf092
    ldx #7
.loop_cf094
    lda led8f,x
    sta l02c0,x
    dex
    bpl loop_cf094
    lda #&34 ; '4'
    sta l0268
    lda #&12
    sta l0269
    jmp cf0af

.cf0aa
    sei
    cld
    jsr sub_cde99
.cf0af
    lda #&40 ; '@'
    sta l0266
    lda #0
    sta l0267
    ldx #&1f
.loop_cf0bb
    lda led6f,x
    sta nmi_v,x
    dex
    bpl loop_cf0bb
    ldx #&1f
.loop_cf0c6
    lda led97,x
    sta l02c8,x
    dex
    bpl loop_cf0c6
    jsr cde28
    lda #0
    sta l0263
    sta l0264
    sta l0265
.cf0dd
    sei
    cld
    lda #0
    sta l0005
.cf0e3
    ldy #&14
.cf0e5
    lda uart_reg_d_input_ports
    and #1
    beq cf124
    jsr sub_ccaa0
    bcc cf120
    lda user_eprom_id_lo
    cmp #&53 ; 'S'
    bne cf102
    lda user_eprom_id_hi
    cmp #&58 ; 'X'
    bne cf102
    jmp user_eprom_entry

.cf102
    dex
    bne cf0e5
    dey
    bne cf0e5
    lda l0266
    eor #1
    sta l0266
    and #1
    beq cf11a
    jsr abi_ledon
    jmp cf0e3

.cf11a
    jsr abi_ledoff
    jmp cf0e3

.cf120
    lda #3
    sta l0005
.cf124
    jsr abi_ledoff
    ldx #&22 ; '"'
    lda #0
.loop_cf12b
    sta l0220,x
    dex
    bpl loop_cf12b
    ldx #4
.loop_cf133
    stx l0004
    cpx #2
    beq cf13c
    jsr sub_cc6c2
.cf13c
    dex
    bpl loop_cf133
    lda #&80
    sta l02c3
.cf144
    lda autorun_flag
    beq cf14c
    jmp l0400

.cf14c
    lda user_eprom_id_lo
    cmp #&53 ; 'S'
    bne cf15d
    lda user_eprom_id_hi
    cmp #&58 ; 'X'
    bne cf15d
    jmp user_eprom_entry

.cf15d
    lda l0005
    sta l0004
    cmp #0
    bne cf17a
    bit l0266
    bvc cf17a
    lda #<string_lj_systems_banner
    sta l0007
    lda #>string_lj_systems_banner
    sta l0008
    ldy #&27 ; '''
    jsr cc4e1
    jsr cd30d
.cf17a
    cld
    lda #>(stack_underflow_handler-1)
    sta l0101
    lda #<(stack_underflow_handler-1)
    sta l0100
    ldx #&80
    txs
    lda l0005
    sta l0004
    lda #0
    sta l0266
    lda l0005
    cmp #3
    beq cf19a
    jmp cc2a4

.cf19a
    jmp ce6b2

.rti_only
    rti

    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff

.application_1
    sei
    cld
    lda #&6b ; 'k'
    sta via_reg_0
    sta via_reg_2
    lda #0
    sta via_reg_3
    lda #3
    sta l0004
    lda #0
    jsr abi_unknown_2
    bcs cf61e
    lda #3
    sta l0005
.cf61e
    lda l0207
    bne cf642
    ldx #5
.loop_cf625
    lda lfa87,x
    sta l0040,x
    dex
    bpl loop_cf625
    lda #&aa
    sta l0207
    ldx #0
.loop_cf634
    txa
    jsr sub_cf91e
    lda #&c8
    jsr abi_wtnms
    inx
    cpx #&17
    bcc loop_cf634
.cf642
    lda #&1f
    jsr sub_cf91e
    jsr sub_cf931
.cf64a
    lda l0043
    and #7
    sta l0043
    asl a
    asl a
    asl a
    clc
    adc #&27 ; '''
    jsr sub_cf91e
.loop_cf659
    jsr abi_rdchar
    cmp #&47 ; 'G'
    beq cf676
    cmp #&67 ; 'g'
    beq cf676
    cmp #&2b ; '+'
    beq cf671
    cmp #&2d ; '-'
    bne loop_cf659
    dec l0043
    jmp cf64a

.cf671
    inc l0043
    jmp cf64a

.cf676
    lda l0043
    asl a
    tax
    lda lf692,x
    sta l0045
    lda lf693,x
    sta l0046
.loop_cf684
    jsr abi_getin
    bcc loop_cf684
    jsr sub_cf68f
    jmp cf64a

.sub_cf68f
    jmp (l0045)

.lf692
lf693 = lf692+1
    equw sub_cf6a2, sub_cf6d5,     cf6e0,     cf72d, sub_cf7a1,     cf881
    equw sub_cf8b1, sub_cf8e1

.sub_cf6a2
    lda #0
    sta l0044
    lda #&27 ; '''
    sta l0049
.cf6aa
    jsr sub_cf942
    pha
    bit l0044
    bpl cf6b5
    jsr sub_cf976
.cf6b5
    lda l0049
    ldy #6
    jsr sub_cf920
    pla
    jsr abi_wrbyte
    ldx #&c8
.cf6c2
    jsr abi_getin
    bcc cf6cc
    dex
    bne cf6c2
    beq cf6aa
.cf6cc
    cmp #&47 ; 'G'
    beq cf6d4
    cmp #&67 ; 'g'
    bne cf6c2
.cf6d4
    rts

.sub_cf6d5
    lda #&80
    sta l0044
    lda #&2f ; '/'
    sta l0049
    jmp cf6aa

.cf6e0
    jsr abi_getin
    bcc cf724
    lda via_reg_0
    ora #&40 ; '@'
    sta via_reg_0
    ldx #&14
    lda #&46 ; 'F'
    sta l0047
.cf6f3
    lda via_reg_0
    bpl cf70f
    dec l0047
    bne cf6f3
    dex
    bne cf6f3
    lda via_reg_0
    and #&bf
    sta via_reg_0
    lda #&6f ; 'o'
    jsr sub_cf91e
    jmp cf6e0

.cf70f
    lda via_reg_0
    and #&bf
    sta via_reg_0
    lda #&67 ; 'g'
    jsr sub_cf91e
    lda #1
    jsr sub_cf995
    jmp cf6e0

.cf724
    lda via_reg_0
    and #&bf
    sta via_reg_0
    rts

.cf72d
    jsr abi_getin
    bcs cf733
    rts

.cf733
    jsr sub_cf764
    cpx #&ff
    beq cf75c
    lda #&3f ; '?'
    ldy #5
    jsr sub_cf920
    jsr sub_cf9c2
    stx number
    lda #0
    sta number_high
    ldy #3
    jsr abi_toadec
    jsr sub_cf9c2
    ldy #3
    lda l0005
    jsr abi_write
    jmp cf72d

.cf75c
    lda #&77 ; 'w'
    jsr sub_cf91e
    jmp cf72d

.sub_cf764
    ldx #0
    lda via_reg_0
    ora #&40 ; '@'
    sta via_reg_0
.loop_cf76e
    lda via_reg_0
    bpl cf793
    ldy #&0a
.loop_cf775
    dey
    bne loop_cf775
    inx
    cpx #3
    bcc loop_cf76e
    lda via_reg_0
    and #&bf
    sta via_reg_0
.loop_cf785
    lda via_reg_0
    bpl cf793
    ldy #&0b
.loop_cf78c
    dey
    bne loop_cf78c
    inx
    bne loop_cf785
    dex
.cf793
    lda via_reg_0
    and #&bf
    sta via_reg_0
    lda #&14
    jsr abi_wtnms
    rts

.sub_cf7a1
    lda l0040
    cmp #&0a
    bcs cf7a8
    rts

.cf7a8
    lda #&63 ; 'c'
    sta l004a
.cf7ac
    lda l004a
    jsr sub_cf976
    jsr abi_getin
    bcc cf7fd
    jsr sub_cf803
    lda number
    beq cf7ef
    lda #&47 ; 'G'
    ldy #5
    jsr sub_cf920
    jsr sub_cf86a
    sec
    lda number
    sbc l0040
    bcs cf7da
    eor #&ff
    clc
    adc l004a
    bcc cf7d7
    lda #&ff
.cf7d7
    jmp cf7e5

.cf7da
    sec
    sta l0047
    lda l004a
    sbc l0047
    bcs cf7e5
    lda #0
.cf7e5
    sta l004a
    lda #&fa
    jsr abi_wtnms
    jmp cf7ac

.cf7ef
    lda #0
    jsr sub_cf976
    lda #&7f
    jsr sub_cf91e
    jsr sub_cf931
    rts

.cf7fd
    lda #0
    jsr sub_cf976
    rts

.sub_cf803
    lda #0
    sta number
    sta number_high
    lda #<simple_irq_handler
    sta irq_v
    lda #>simple_irq_handler
    sta irq_v_high
    lda #&13
    sta l004b
    lda #&40 ; '@'
    sta via_reg_11
    lda #&50 ; 'P'
    sta via_reg_4
    lda #&c3
    sta via_reg_5
    lda #&c0
    sta via_reg_14
    cli
.cf82c
    lda via_reg_0
    and #&10
    bne cf84c
    lda l004b
    bne cf82c
.cf837
    lsr number_high
    ror number
    lda via_reg_4
    lda #0
    sta via_reg_11
    lda #&40 ; '@'
    sta via_reg_14
    sei
    lda number
    rts

.cf84c
    lda via_reg_0
    and #&10
    bne cf85c
    inc number
    bne cf82c
    inc number_high
    jmp cf82c

.cf85c
    lda l004b
    bne cf84c
    beq cf837
.simple_irq_handler
    pha
    lda via_reg_4
    dec l004b
    pla
    rti

.sub_cf86a
    jsr sub_cf9c2
    ldy #3
    lda #0
    sta number_high
    jsr abi_toadec
    jsr sub_cf9c2
    lda l0005
    ldy #3
    jsr abi_write
    rts

.cf881
    jsr abi_getin
    bcs cf889
    jmp cf7fd

.cf889
    jsr sub_cf942
    sta l004a
    jsr sub_cf976
    lda #&fa
    jsr abi_wtnms
    jsr sub_cf803
    lda #&4f ; 'O'
    ldy #5
    jsr sub_cf920
    jsr sub_cf86a
    lda number
    bne cf881
    lda l004a
    cmp #&64 ; 'd'
    bcc cf881
    jsr cf7ef
    rts

.sub_cf8b1
    lda #&ff
    jsr sub_cf976
.cf8b6
    ldx #&c8
.loop_cf8b8
    jsr abi_getin
    bcc cf8db
    dex
    bne loop_cf8b8
    jsr sub_cf942
    pha
    lda #&57 ; 'W'
    ldy #6
    jsr sub_cf920
    pla
    jsr abi_wrbyte
    cmp l0041
    bcs cf8b6
    lda #1
    jsr sub_cf995
    jmp cf8b6

.cf8db
    lda #0
    jsr sub_cf976
    rts

.sub_cf8e1
    lda #&80
    sta l004a
.cf8e5
    lda l004a
    jsr sub_cf976
    ldx #&64 ; 'd'
.loop_cf8ec
    jsr abi_getin
    bcc cf918
    dex
    bne loop_cf8ec
    lda #&5f ; '_'
    ldy #6
    jsr sub_cf920
    jsr sub_cf942
    jsr abi_wrbyte
    cmp l0042
    bcs cf90f
    inc l004a
    bne cf8e5
    lda #&ff
    sta l004a
    bne cf8e5
.cf90f
    lda l004a
    beq cf8e5
    dec l004a
    jmp cf8e5

.cf918
    lda #0
    jsr sub_cf976
    rts

.sub_cf91e
    ldy #8
.sub_cf920
    sta ptr
    lda #&0c
    jsr abi_wrchar
    lda #>application_1_menu
    sta ptr_high
    lda l0005
    jsr abi_write
    rts

.sub_cf931
    pha
    lda #&fa
    jsr abi_wtnms
    jsr abi_wtnms
    jsr abi_wtnms
    jsr abi_wtnms
    pla
    rts

.sub_cf942
    lda #0
    sta via_reg_3
    lda via_reg_0
    ora #&0a
    sta via_reg_0
    and #&fd
    sta via_reg_0
    ora #2
    sta via_reg_0
.loop_cf959
    lda via_reg_0
    and #4
    beq loop_cf959
    lda via_reg_0
    and #&f7
    sta via_reg_0
    lda via_reg_1
    pha
    lda via_reg_0
    ora #8
    sta via_reg_0
    pla
    rts

.sub_cf976
    sta l0047
    lda via_reg_0
    and #&fe
    sta via_reg_0
    lda #&ff
    sta via_reg_3
    lda l0047
    sta via_reg_1
    lda via_reg_0
    ora #1
    sta via_reg_0
    lda l0047
    rts

.sub_cf995
    sta l0047
    txa
    pha
.cf999
    lda #&c8
    sta l0048
.loop_cf99d
    lda via_reg_0
    and #&df
    sta via_reg_0
    ldx #&19
.loop_cf9a7
    dex
    bne loop_cf9a7
    lda via_reg_0
    ora #&20 ; ' '
    sta via_reg_0
    ldx #&19
.loop_cf9b4
    dex
    bne loop_cf9b4
    dec l0048
    bne loop_cf99d
    dec l0047
    bne cf999
    pla
    tax
    rts

.sub_cf9c2
    lda #&4c ; 'L'
    sta ptr
    lda #0
    sta ptr_high
    rts

    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
.application_1_menu
    equs "        APPLICATIONS..         SELECT  ANLOG   LINK    PROX    DIS"
    equs "T    MOTOR   RPS     BEAM    OPTIC   PROX "
    equb &89, &89, &89
    equs "PROX ---DIST ---STALLED "
.lfa87
    equb &64, &15, &15,   0,   0, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff

.application_2
    sei
    lda #0
    sta via_reg_3
    sta via_reg_0
    lda #&ff
    sta via_reg_2
    lda #3
    sta l0004
    lda #0
    jsr abi_unknown_2
    bcs cfb1d
    lda #3
    sta l0005
.cfb1d
    lda l0207
    bne cfb3b
    lda #0
    sta l0040
    lda #&aa
    sta l0207
    ldx #0
.loop_cfb2d
    txa
    jsr sub_cfd3f
    lda #&c8
    jsr abi_wtnms
    inx
    cpx #&16
    bcc loop_cfb2d
.cfb3b
    lda #&1e
    jsr sub_cfd3f
    jsr sub_cfd21
.cfb43
    lda l0040
    asl a
    asl a
    asl a
    cld
    clc
    adc #&26 ; '&'
    jsr sub_cfd3f
.loop_cfb4f
    jsr abi_rdchar
    cmp #&47 ; 'G'
    beq cfb7c
    cmp #&67 ; 'g'
    beq cfb7c
    cmp #&2b ; '+'
    beq cfb6d
    cmp #&2d ; '-'
    bne loop_cfb4f
    dec l0040
    bpl cfb43
    lda #6
    sta l0040
    jmp cfb43

.cfb6d
    inc l0040
    lda l0040
    cmp #7
    bne cfb43
    lda #0
    sta l0040
    jmp cfb43

.cfb7c
    lda l0040
    asl a
    tax
    lda lfb98,x
    sta l0041
    lda lfb99,x
    sta l0042
.loop_cfb8a
    jsr abi_getin
    bcc loop_cfb8a
    jsr sub_cfb95
    jmp cfb43

.sub_cfb95
    jmp (l0041)

.lfb98
lfb99 = lfb98+1
    equw sub_cfba6,     cfbbc, sub_cfbf5, sub_cfc15, sub_cfc79, sub_cfccf
    equw sub_cfc62

.sub_cfba6
    lda #&5e ; '^'
    jsr sub_cfd3f
    lda #0
    sta via_reg_0
.loop_cfbb0
    jsr sub_cfd21
    bcc cfbbb
    inc via_reg_0
    jmp loop_cfbb0

.cfbbb
    rts

.cfbbc
    lda #&66 ; 'f'
    jsr sub_cfd3f
    lda #1
    sta via_reg_0
    lda #5
    jsr sub_cfd0b
    bcc cfbf4
    lda #3
    sta via_reg_0
    lda #1
    jsr sub_cfd0b
    bcc cfbf4
    lda #4
    sta via_reg_0
    lda #5
    jsr sub_cfd0b
    bcc cfbf4
    lda #2
    sta via_reg_0
    lda #1
    jsr sub_cfd0b
    bcc cfbf4
    jmp cfbbc

.cfbf4
    rts

.sub_cfbf5
    lda #&6e ; 'n'
    jsr sub_cfd3f
    lda #0
    sta via_reg_0
.loop_cfbff
    jsr sub_cfd21
    bcc cfc0f
    sed
    clc
    adc #1
    sta via_reg_0
    cmp #&60 ; '`'
    bne loop_cfbff
.cfc0f
    lda #0
    sta via_reg_0
    rts

.sub_cfc15
    lda #&76 ; 'v'
    jsr sub_cfd3f
.cfc1a
    ldy #&64 ; 'd'
    jsr abi_wtnms
    lda #&0a
    sta l0044
.cfc23
    lda #&fa
    sta l0045
.loop_cfc27
    lda #&80
    sta via_reg_0
    jsr abi_wt1ms
    lda #0
    sta via_reg_0
    jsr abi_wt1ms
    dec l0045
    bne loop_cfc27
    jsr abi_getin
    bcc cfc61
    lda #&ca
    sta l0045
.loop_cfc44
    lda #&80
    sta via_reg_0
    jsr sub_cfd17
    lda #0
    sta via_reg_0
    jsr sub_cfd17
    dec l0045
    bne loop_cfc44
    jsr abi_getin
    bcc cfc61
    dec l0044
    bne cfc23
.cfc61
    rts

.sub_cfc62
    lda #&8e
    jsr sub_cfd3f
    ldy #&64 ; 'd'
    jsr abi_wtnms
.loop_cfc6c
    lda #1
    bit via_reg_1
    beq cfc1a
    jsr abi_getin
    bcs loop_cfc6c
    rts

.sub_cfc79
    lda #&7e ; '~'
    jsr sub_cfd3f
    ldy #&64 ; 'd'
    jsr abi_wtnms
.cfc83
    lda #&24 ; '$'
    sta l0047
.loop_cfc87
    lda #9
    jsr sub_cfd33
    bcc cfcce
    lda #&0c
    jsr sub_cfd33
    bcc cfcce
    lda #6
    jsr sub_cfd33
    bcc cfcce
    lda #3
    jsr sub_cfd33
    bcc cfcce
    dec l0047
    bne loop_cfc87
    lda #&24 ; '$'
    sta l0047
.loop_cfcab
    lda #3
    jsr sub_cfd33
    bcc cfcce
    lda #6
    jsr sub_cfd33
    bcc cfcce
    lda #&0c
    jsr sub_cfd33
    bcc cfcce
    lda #9
    jsr sub_cfd33
    bcc cfcce
    dec l0047
    bne loop_cfcab
    jmp cfc83

.cfcce
    rts

.sub_cfccf
    lda #&86
    jsr sub_cfd3f
    ldy #&64 ; 'd'
    jsr abi_wtnms
.cfcd9
    lda #2
    sta l0048
.loop_cfcdd
    ldx #0
.loop_cfcdf
    stx via_reg_0
    lda #&16
    jsr abi_wtnms
    jsr abi_getin
    bcc cfd0a
    inx
    cpx #&80
    bne loop_cfcdf
    dec l0048
    bne loop_cfcdd
    ldx #0
    stx via_reg_0
    lda #2
    sta l0049
.loop_cfcfe
    jsr sub_cfd21
    bcc cfd0a
    dec l0049
    bne loop_cfcfe
    jmp cfcd9

.cfd0a
    rts

.sub_cfd0b
    sta l0043
.loop_cfd0d
    jsr sub_cfd21
    bcc cfd16
    dec l0043
    bne loop_cfd0d
.cfd16
    rts

.sub_cfd17
    lda #&ff
    sta l0046
    ldx l0046
.loop_cfd1d
    dex
    bne loop_cfd1d
    rts

.sub_cfd21
    pha
    ldx #4
.loop_cfd24
    lda #&fa
    jsr abi_wtnms
    jsr abi_getin
    bcc cfd31
    dex
    bne loop_cfd24
.cfd31
    pla
    rts

.sub_cfd33
    sta via_reg_0
    lda #&78 ; 'x'
    jsr abi_wtnms
    jsr abi_getin
    rts

.sub_cfd3f
    ldy #8
    sta ptr
    lda #&0c
    jsr abi_wrchar
    lda #>application_2_menu
    sta ptr_high
    lda l0005
    jsr abi_write
    rts

    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff
.application_2_menu
    equs "        I-O DEVICES..         SELECT  COUNT   TRAFF   7-SEG   PIEZ"
    equs "O   STEP    ANALOG  DARK    COUNT --TRAFF --7-SEG --PIEZO --STEP  "
    equs "--ANALOG--DARK  --"
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff, &ff
    equb &ff, &ff, &ff, &ff, &ff, &ff
    equw     nmi_handler,   reset_handler, irq_brk_handler
.pydis_end

; Automatically generated labels:
;     cc0a0
;     cc0a8
;     cc0b0
;     cc0b8
;     cc0c0
;     cc0d5
;     cc0f3
;     cc0fa
;     cc123
;     cc12e
;     cc147
;     cc169
;     cc180
;     cc18c
;     cc194
;     cc1bc
;     cc1c3
;     cc1d8
;     cc1e4
;     cc1ef
;     cc1fc
;     cc203
;     cc237
;     cc23c
;     cc248
;     cc254
;     cc268
;     cc2a4
;     cc2c9
;     cc2ce
;     cc2e0
;     cc2f6
;     cc2fd
;     cc316
;     cc326
;     cc33a
;     cc340
;     cc34d
;     cc358
;     cc367
;     cc36c
;     cc388
;     cc389
;     cc394
;     cc3ab
;     cc3b0
;     cc3b8
;     cc3be
;     cc3d0
;     cc3df
;     cc3ee
;     cc3f5
;     cc41e
;     cc43f
;     cc440
;     cc45a
;     cc45b
;     cc45d
;     cc467
;     cc46e
;     cc483
;     cc4a6
;     cc4b9
;     cc4cd
;     cc4e1
;     cc4ed
;     cc520
;     cc53a
;     cc574
;     cc588
;     cc591
;     cc599
;     cc5ad
;     cc612
;     cc61a
;     cc622
;     cc676
;     cc677
;     cc6a1
;     cc6b9
;     cc6cf
;     cc6dc
;     cc7cd
;     cc7e9
;     cc82d
;     cc89a
;     cc8a8
;     cc8c3
;     cc8c7
;     cc8e1
;     cc8e4
;     cc8fb
;     cc902
;     cc920
;     cc922
;     cc93f
;     cc953
;     cc968
;     cc97a
;     cc990
;     cc9bd
;     cc9e9
;     cc9f0
;     cc9fd
;     cca0a
;     cca16
;     cca25
;     cca29
;     cca4c
;     cca5a
;     cca6a
;     ccab4
;     ccabe
;     ccad3
;     ccad8
;     ccafd
;     ccb00
;     ccb3a
;     ccb89
;     ccbb4
;     ccbb7
;     ccbbb
;     ccbc7
;     ccbd3
;     ccbee
;     ccbf8
;     ccc02
;     ccc0c
;     ccc14
;     ccc26
;     ccc29
;     ccc36
;     ccc45
;     ccc4b
;     ccc6f
;     ccc7c
;     ccc88
;     ccc9f
;     cccbb
;     ccccb
;     ccce9
;     ccceb
;     cccee
;     ccd36
;     ccd3a
;     ccd52
;     ccd61
;     ccd7b
;     ccd84
;     ccd85
;     ccd87
;     ccda1
;     ccdba
;     ccdc4
;     ccdef
;     cce58
;     cce80
;     cce89
;     ccea8
;     ccecd
;     ccedf
;     ccee1
;     ccef2
;     ccefd
;     ccf06
;     ccf0e
;     ccf15
;     ccf18
;     ccf43
;     ccf58
;     ccf65
;     ccf76
;     ccf79
;     ccf9f
;     ccfab
;     ccfe1
;     ccfe4
;     ccfe8
;     ccfec
;     ccff9
;     cd03e
;     cd0aa
;     cd0d2
;     cd0dd
;     cd0e6
;     cd0fa
;     cd0fb
;     cd144
;     cd162
;     cd184
;     cd1a3
;     cd1e3
;     cd22e
;     cd246
;     cd27e
;     cd28e
;     cd291
;     cd2a4
;     cd2aa
;     cd2ac
;     cd2b7
;     cd2fa
;     cd30d
;     cd318
;     cd348
;     cd34d
;     cd360
;     cd361
;     cdcb7
;     cdcdf
;     cdce8
;     cdd0d
;     cdd30
;     cdd32
;     cdd3c
;     cdd46
;     cdd49
;     cdd53
;     cdd67
;     cdd78
;     cdd94
;     cdda9
;     cddba
;     cddc4
;     cddc6
;     cddcf
;     cdddb
;     cddec
;     cde05
;     cde11
;     cde1b
;     cde28
;     cde47
;     cde72
;     cde7c
;     cde86
;     cdea5
;     cdeaf
;     cdeb9
;     cdef5
;     cdf3c
;     cdf4c
;     cdf52
;     cdf6f
;     cdfba
;     cdfc1
;     cdfd3
;     cdfd9
;     cdfdc
;     ce031
;     ce048
;     ce059
;     ce077
;     ce080
;     ce085
;     ce0a2
;     ce0c7
;     ce0d7
;     ce0f3
;     ce0f9
;     ce0ff
;     ce109
;     ce12c
;     ce130
;     ce140
;     ce145
;     ce153
;     ce155
;     ce170
;     ce1a6
;     ce1b6
;     ce1b8
;     ce1ba
;     ce1d2
;     ce1d8
;     ce1dc
;     ce211
;     ce217
;     ce21d
;     ce227
;     ce234
;     ce26a
;     ce294
;     ce2ae
;     ce31e
;     ce32d
;     ce332
;     ce349
;     ce356
;     ce35a
;     ce361
;     ce370
;     ce374
;     ce37b
;     ce39f
;     ce3a2
;     ce3a7
;     ce3b3
;     ce3c1
;     ce3c4
;     ce3dd
;     ce3e8
;     ce3f9
;     ce402
;     ce427
;     ce433
;     ce439
;     ce446
;     ce44c
;     ce467
;     ce470
;     ce494
;     ce499
;     ce49c
;     ce49f
;     ce4a9
;     ce4b3
;     ce4bf
;     ce4d4
;     ce4df
;     ce4e2
;     ce4e6
;     ce4e8
;     ce539
;     ce6b2
;     ce6cc
;     ce6cf
;     ce6db
;     ce727
;     ce732
;     ce73f
;     ce762
;     ce777
;     ce787
;     ce7ac
;     ce7b3
;     ce7fe
;     ce810
;     ce817
;     ce826
;     ce839
;     ce840
;     ce846
;     ce867
;     ce86e
;     ce873
;     ce876
;     ce89a
;     ce8a4
;     ce8ae
;     ce8ca
;     ce8dd
;     ce8e4
;     ce8ea
;     ce909
;     ce944
;     ce94e
;     ce958
;     ce98f
;     ce9cd
;     ce9e0
;     ce9fe
;     cea03
;     cea24
;     cea5e
;     cea7e
;     cea94
;     ceaa6
;     ceabb
;     ceac0
;     ceb3c
;     ceb64
;     ceb6f
;     cebab
;     cebcc
;     cebf1
;     cebf6
;     cec29
;     cec49
;     cf03b
;     cf04d
;     cf054
;     cf062
;     cf092
;     cf0aa
;     cf0af
;     cf0dd
;     cf0e3
;     cf0e5
;     cf102
;     cf11a
;     cf120
;     cf124
;     cf13c
;     cf144
;     cf14c
;     cf15d
;     cf17a
;     cf19a
;     cf61e
;     cf642
;     cf64a
;     cf671
;     cf676
;     cf6aa
;     cf6b5
;     cf6c2
;     cf6cc
;     cf6d4
;     cf6e0
;     cf6f3
;     cf70f
;     cf724
;     cf72d
;     cf733
;     cf75c
;     cf793
;     cf7a8
;     cf7ac
;     cf7d7
;     cf7da
;     cf7e5
;     cf7ef
;     cf7fd
;     cf82c
;     cf837
;     cf84c
;     cf85c
;     cf881
;     cf889
;     cf8b6
;     cf8db
;     cf8e5
;     cf90f
;     cf918
;     cf999
;     cfb1d
;     cfb3b
;     cfb43
;     cfb6d
;     cfb7c
;     cfbbb
;     cfbbc
;     cfbf4
;     cfc0f
;     cfc1a
;     cfc23
;     cfc61
;     cfc83
;     cfcce
;     cfcd9
;     cfd0a
;     cfd16
;     cfd31
;     l0004
;     l0005
;     l0006
;     l0007
;     l0008
;     l0009
;     l000a
;     l000b
;     l000c
;     l000d
;     l000e
;     l000f
;     l0010
;     l0011
;     l0012
;     l0013
;     l0040
;     l0041
;     l0042
;     l0043
;     l0044
;     l0045
;     l0046
;     l0047
;     l0048
;     l0049
;     l004a
;     l004b
;     l00f1
;     l0100
;     l0101
;     l0207
;     l0208
;     l0209
;     l020a
;     l020c
;     l020e
;     l020f
;     l0210
;     l0212
;     l0213
;     l0214
;     l0215
;     l0216
;     l0217
;     l0218
;     l0219
;     l021a
;     l021b
;     l021c
;     l021d
;     l021e
;     l021f
;     l0220
;     l0221
;     l0222
;     l0223
;     l0224
;     l0225
;     l0226
;     l0227
;     l0228
;     l0229
;     l022a
;     l022b
;     l022c
;     l022d
;     l022e
;     l022f
;     l0230
;     l0231
;     l0232
;     l0233
;     l0234
;     l0235
;     l0236
;     l0237
;     l0238
;     l0239
;     l023a
;     l023b
;     l0242
;     l0243
;     l0244
;     l0245
;     l0246
;     l0263
;     l0264
;     l0265
;     l0266
;     l0267
;     l0268
;     l0269
;     l02c0
;     l02c1
;     l02c2
;     l02c3
;     l02c4
;     l02c5
;     l02c6
;     l02c7
;     l02c8
;     l0300
;     l0301
;     l0304
;     l0306
;     l0307
;     l030b
;     l030c
;     l0310
;     l0315
;     l0370
;     l0400
;     l7000
;     lc699
;     lc8cb
;     le174
;     le175
;     le2cc
;     le2cd
;     le555
;     le5be
;     le6eb
;     le6f3
;     le6f4
;     le81a
;     le820
;     lec53
;     leca6
;     leca7
;     led28
;     led39
;     led3a
;     led5b
;     led6f
;     led8f
;     led97
;     ledb7
;     lee69
;     lee6a
;     lf692
;     lf693
;     lfa87
;     lfb98
;     lfb99
;     loop_cc10d
;     loop_cc16c
;     loop_cc177
;     loop_cc1a7
;     loop_cc24d
;     loop_cc258
;     loop_cc2d0
;     loop_cc372
;     loop_cc3a3
;     loop_cc444
;     loop_cc48a
;     loop_cc4b1
;     loop_cc4de
;     loop_cc4ef
;     loop_cc544
;     loop_cc604
;     loop_cc606
;     loop_cc67a
;     loop_cc7bd
;     loop_cc7d9
;     loop_cc7f6
;     loop_cc804
;     loop_cc88d
;     loop_cc892
;     loop_cc8a3
;     loop_cc8aa
;     loop_cc8b9
;     loop_cc95a
;     loop_cc989
;     loop_cc999
;     loop_cc9a4
;     loop_cc9ae
;     loop_cc9c7
;     loop_cca04
;     loop_cca36
;     loop_cca97
;     loop_ccb0a
;     loop_ccb23
;     loop_ccb3f
;     loop_ccca3
;     loop_cccaf
;     loop_ccda7
;     loop_ccde8
;     loop_cce96
;     loop_cceb0
;     loop_ccec1
;     loop_cced4
;     loop_ccf52
;     loop_ccf93
;     loop_ccfb2
;     loop_cd0a7
;     loop_cd0b7
;     loop_cd119
;     loop_cd126
;     loop_cd153
;     loop_cd164
;     loop_cd169
;     loop_cd186
;     loop_cd1bc
;     loop_cd1c6
;     loop_cd1d0
;     loop_cd24c
;     loop_cd299
;     loop_cde2c
;     loop_cde36
;     loop_cde3d
;     loop_cde68
;     loop_cde9b
;     loop_ce123
;     loop_ce15c
;     loop_ce1f2
;     loop_ce238
;     loop_ce29c
;     loop_ce2ed
;     loop_ce30e
;     loop_ce317
;     loop_ce502
;     loop_ce529
;     loop_ce6d1
;     loop_ceaad
;     loop_cebc1
;     loop_cebd7
;     loop_cec15
;     loop_cec3b
;     loop_cf079
;     loop_cf094
;     loop_cf0bb
;     loop_cf0c6
;     loop_cf12b
;     loop_cf133
;     loop_cf625
;     loop_cf634
;     loop_cf659
;     loop_cf684
;     loop_cf76e
;     loop_cf775
;     loop_cf785
;     loop_cf78c
;     loop_cf8b8
;     loop_cf8ec
;     loop_cf959
;     loop_cf99d
;     loop_cf9a7
;     loop_cf9b4
;     loop_cfb2d
;     loop_cfb4f
;     loop_cfb8a
;     loop_cfbb0
;     loop_cfbff
;     loop_cfc27
;     loop_cfc44
;     loop_cfc6c
;     loop_cfc87
;     loop_cfcab
;     loop_cfcdd
;     loop_cfcdf
;     loop_cfcfe
;     loop_cfd0d
;     loop_cfd1d
;     loop_cfd24
;     sub_cc273
;     sub_cc27a
;     sub_cc284
;     sub_cc28e
;     sub_cc299
;     sub_cc2f3
;     sub_cc30c
;     sub_cc318
;     sub_cc380
;     sub_cc395
;     sub_cc429
;     sub_cc44c
;     sub_cc4ff
;     sub_cc50a
;     sub_cc515
;     sub_cc52d
;     sub_cc54d
;     sub_cc555
;     sub_cc560
;     sub_cc56b
;     sub_cc57c
;     sub_cc58b
;     sub_cc592
;     sub_cc59d
;     sub_cc5ae
;     sub_cc5b3
;     sub_cc5b8
;     sub_cc5c7
;     sub_cc5fc
;     sub_cc62d
;     sub_cc6c2
;     sub_cc6e9
;     sub_cc71a
;     sub_cc71d
;     sub_cc775
;     sub_cc7f5
;     sub_cc803
;     sub_cc811
;     sub_cc820
;     sub_cc84a
;     sub_cc84e
;     sub_cc850
;     sub_cc900
;     sub_cc997
;     sub_cc9a1
;     sub_cc9ac
;     sub_cc9d5
;     sub_cc9ea
;     sub_cca34
;     sub_cca47
;     sub_cca77
;     sub_cca88
;     sub_cca93
;     sub_ccaa0
;     sub_ccab8
;     sub_ccb05
;     sub_ccb6c
;     sub_ccbc0
;     sub_ccc2e
;     sub_ccc67
;     sub_cccd0
;     sub_ccd26
;     sub_ccd3c
;     sub_ccd53
;     sub_ccd8a
;     sub_ccda2
;     sub_cce5b
;     sub_ccefe
;     sub_ccf25
;     sub_cd003
;     sub_cd00b
;     sub_cd016
;     sub_cd023
;     sub_cd108
;     sub_cd167
;     sub_cd1b3
;     sub_cd226
;     sub_cd2af
;     sub_cd2e9
;     sub_cd2ff
;     sub_cdcba
;     sub_cdd13
;     sub_cdda1
;     sub_cddfb
;     sub_cde34
;     sub_cde50
;     sub_cde66
;     sub_cde99
;     sub_cdec8
;     sub_cded5
;     sub_cdf97
;     sub_ce05c
;     sub_ce0df
;     sub_ce11c
;     sub_ce180
;     sub_ce1bc
;     sub_ce1e0
;     sub_ce1ec
;     sub_ce21f
;     sub_ce228
;     sub_ce230
;     sub_ce25c
;     sub_ce28e
;     sub_ce2b9
;     sub_ce2c2
;     sub_ce2d6
;     sub_ce2df
;     sub_ce2e9
;     sub_ce2ff
;     sub_ce4fd
;     sub_ce51b
;     sub_ce524
;     sub_ce703
;     sub_ce8b1
;     sub_ce8b8
;     sub_ce8bf
;     sub_ce95e
;     sub_ce965
;     sub_ce96c
;     sub_ce977
;     sub_cea4b
;     sub_cea65
;     sub_ceafc
;     sub_ceb0c
;     sub_ceb34
;     sub_ceb6d
;     sub_cebb4
;     sub_cec03
;     sub_cec11
;     sub_cec1c
;     sub_cec2b
;     sub_cf68f
;     sub_cf6a2
;     sub_cf6d5
;     sub_cf764
;     sub_cf7a1
;     sub_cf803
;     sub_cf86a
;     sub_cf8b1
;     sub_cf8e1
;     sub_cf91e
;     sub_cf920
;     sub_cf931
;     sub_cf942
;     sub_cf976
;     sub_cf995
;     sub_cf9c2
;     sub_cfb95
;     sub_cfba6
;     sub_cfbf5
;     sub_cfc15
;     sub_cfc62
;     sub_cfc79
;     sub_cfccf
;     sub_cfd0b
;     sub_cfd17
;     sub_cfd21
;     sub_cfd33
;     sub_cfd3f
    assert <(stack_underflow_handler-1) == &7b
    assert <alt_nmi_handler == &08
    assert <complex_irq_handler == &cd
    assert <default_brk_handler == &f6
    assert <simple_irq_handler == &62
    assert <string_a_x_y_pc_sp_sr == &0d
    assert <string_at_breakpoint == &74
    assert <string_calling_keypad_display_monitor == &c7
    assert <string_device == &69
    assert <string_done == &f5
    assert <string_error == &97
    assert <string_help_commands_long == &de
    assert <string_help_commands_short == &64
    assert <string_help_system_addresses == &c9
    assert <string_lj_systems_banner == &fb
    assert <string_load_t1_t2_cas == &e9
    assert <string_loaded == &5f
    assert <string_loading == &52
    assert <string_mac == &05
    assert <string_memory_limit == &16
    assert <string_press_return_for_system_address_info == &8f
    assert <string_saved == &1e
    assert <string_saving == &14
    assert <string_serial_params == &19
    assert <string_start_recording == &f1
    assert <string_start_tape == &89
    assert >(stack_underflow_handler-1) == &dd
    assert >alt_nmi_handler == &e0
    assert >application_1_menu == &fa
    assert >application_2_menu == &fe
    assert >complex_irq_handler == &c8
    assert >default_brk_handler == &de
    assert >simple_irq_handler == &f8
    assert >string_a_x_y_pc_sp_sr == &ce
    assert >string_at_breakpoint == &df
    assert >string_calling_keypad_display_monitor == &d2
    assert >string_device == &d0
    assert >string_done == &c5
    assert >string_error == &c6
    assert >string_help_commands_long == &d4
    assert >string_help_commands_short == &d3
    assert >string_help_system_addresses == &d8
    assert >string_lj_systems_banner == &ef
    assert >string_load_t1_t2_cas == &e9
    assert >string_loaded == &d0
    assert >string_loading == &d0
    assert >string_mac == &c3
    assert >string_memory_limit == &cd
    assert >string_press_return_for_system_address_info == &d8
    assert >string_saved == &d2
    assert >string_saving == &d2
    assert >string_serial_params == &ee
    assert >string_start_recording == &d1
    assert >string_start_tape == &d0
    assert ce73f == &e73f
    assert ce826 == &e826
    assert ce8ca == &e8ca
    assert cf6e0 == &f6e0
    assert cf72d == &f72d
    assert cf881 == &f881
    assert cfbbc == &fbbc
    assert default_brk_handler == &def6
    assert irq_brk_handler == &e0ca
    assert loop_cc7bd == &c7bd
    assert loop_cc7d9 == &c7d9
    assert nmi_handler == &e0dc
    assert reset_handler == &f022
    assert rti_only == &f19d
    assert string_error_0 == &effa
    assert string_error_1 == &ee9f
    assert string_error_10 == &ef20
    assert string_error_11 == &ef41
    assert string_error_12 == &ef56
    assert string_error_13 == &effa
    assert string_error_14 == &effa
    assert string_error_15 == &effa
    assert string_error_16 == &effa
    assert string_error_17 == &effa
    assert string_error_18 == &effa
    assert string_error_19 == &effa
    assert string_error_2 == &eeb1
    assert string_error_20 == &ef6e
    assert string_error_21 == &ef81
    assert string_error_22 == &ef8e
    assert string_error_23 == &ef9c
    assert string_error_24 == &efad
    assert string_error_25 == &efc7
    assert string_error_26 == &efe3
    assert string_error_3 == &eec0
    assert string_error_4 == &eed8
    assert string_error_5 == &eeed
    assert string_error_6 == &ef03
    assert string_error_7 == &effa
    assert string_error_8 == &ef14
    assert string_error_9 == &effa
    assert sub_cc71d == &c71d
    assert sub_cc775 == &c775
    assert sub_cc7f5 == &c7f5
    assert sub_cc803 == &c803
    assert sub_cc811 == &c811
    assert sub_cc820 == &c820
    assert sub_cc84a == &c84a
    assert sub_cc84e == &c84e
    assert sub_cc850 == &c850
    assert sub_cc900 == &c900
    assert sub_cc9d5 == &c9d5
    assert sub_cc9ea == &c9ea
    assert sub_ccab8 == &cab8
    assert sub_ccb6c == &cb6c
    assert sub_cccd0 == &ccd0
    assert sub_ccd3c == &cd3c
    assert sub_ccd53 == &cd53
    assert sub_cce5b == &ce5b
    assert sub_ccefe == &cefe
    assert sub_cd167 == &d167
    assert sub_cd226 == &d226
    assert sub_cd2af == &d2af
    assert sub_cd2e9 == &d2e9
    assert sub_cd2ff == &d2ff
    assert sub_cdcba == &dcba
    assert sub_cdd13 == &dd13
    assert sub_cdda1 == &dda1
    assert sub_cddfb == &ddfb
    assert sub_cdf97 == &df97
    assert sub_ce05c == &e05c
    assert sub_ce703 == &e703
    assert sub_ce977 == &e977
    assert sub_cea65 == &ea65
    assert sub_cf6a2 == &f6a2
    assert sub_cf6d5 == &f6d5
    assert sub_cf7a1 == &f7a1
    assert sub_cf8b1 == &f8b1
    assert sub_cf8e1 == &f8e1
    assert sub_cfba6 == &fba6
    assert sub_cfbf5 == &fbf5
    assert sub_cfc15 == &fc15
    assert sub_cfc62 == &fc62
    assert sub_cfc79 == &fc79
    assert sub_cfccf == &fccf

save pydis_start, pydis_end
