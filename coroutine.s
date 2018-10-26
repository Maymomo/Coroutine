
coroutine:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 e2 2f 00 00    	pushq  0x2fe2(%rip)        # 4008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 2f 00 00    	jmpq   *0x2fe4(%rip)        # 4010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <_ZNSo3putEc@plt>:
    1030:	ff 25 e2 2f 00 00    	jmpq   *0x2fe2(%rip)        # 4018 <_ZNSo3putEc@GLIBCXX_3.4>
    1036:	68 00 00 00 00       	pushq  $0x0
    103b:	e9 e0 ff ff ff       	jmpq   1020 <.plt>

0000000000001040 <printf@plt>:
    1040:	ff 25 da 2f 00 00    	jmpq   *0x2fda(%rip)        # 4020 <printf@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	pushq  $0x1
    104b:	e9 d0 ff ff ff       	jmpq   1020 <.plt>

0000000000001050 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
    1050:	ff 25 d2 2f 00 00    	jmpq   *0x2fd2(%rip)        # 4028 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GLIBCXX_3.4>
    1056:	68 02 00 00 00       	pushq  $0x2
    105b:	e9 c0 ff ff ff       	jmpq   1020 <.plt>

0000000000001060 <memset@plt>:
    1060:	ff 25 ca 2f 00 00    	jmpq   *0x2fca(%rip)        # 4030 <memset@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	pushq  $0x3
    106b:	e9 b0 ff ff ff       	jmpq   1020 <.plt>

0000000000001070 <_ZNSo9_M_insertImEERSoT_@plt>:
    1070:	ff 25 c2 2f 00 00    	jmpq   *0x2fc2(%rip)        # 4038 <_ZNSo9_M_insertImEERSoT_@GLIBCXX_3.4.9>
    1076:	68 04 00 00 00       	pushq  $0x4
    107b:	e9 a0 ff ff ff       	jmpq   1020 <.plt>

0000000000001080 <_ZNSo5flushEv@plt>:
    1080:	ff 25 ba 2f 00 00    	jmpq   *0x2fba(%rip)        # 4040 <_ZNSo5flushEv@GLIBCXX_3.4>
    1086:	68 05 00 00 00       	pushq  $0x5
    108b:	e9 90 ff ff ff       	jmpq   1020 <.plt>

0000000000001090 <__cxa_atexit@plt>:
    1090:	ff 25 b2 2f 00 00    	jmpq   *0x2fb2(%rip)        # 4048 <__cxa_atexit@GLIBC_2.2.5>
    1096:	68 06 00 00 00       	pushq  $0x6
    109b:	e9 80 ff ff ff       	jmpq   1020 <.plt>

00000000000010a0 <pthread_self@plt>:
    10a0:	ff 25 aa 2f 00 00    	jmpq   *0x2faa(%rip)        # 4050 <pthread_self@GLIBC_2.2.5>
    10a6:	68 07 00 00 00       	pushq  $0x7
    10ab:	e9 70 ff ff ff       	jmpq   1020 <.plt>

00000000000010b0 <_ZdlPv@plt>:
    10b0:	ff 25 a2 2f 00 00    	jmpq   *0x2fa2(%rip)        # 4058 <_ZdlPv@GLIBCXX_3.4>
    10b6:	68 08 00 00 00       	pushq  $0x8
    10bb:	e9 60 ff ff ff       	jmpq   1020 <.plt>

00000000000010c0 <_Znwm@plt>:
    10c0:	ff 25 9a 2f 00 00    	jmpq   *0x2f9a(%rip)        # 4060 <_Znwm@GLIBCXX_3.4>
    10c6:	68 09 00 00 00       	pushq  $0x9
    10cb:	e9 50 ff ff ff       	jmpq   1020 <.plt>

00000000000010d0 <__stack_chk_fail@plt>:
    10d0:	ff 25 92 2f 00 00    	jmpq   *0x2f92(%rip)        # 4068 <__stack_chk_fail@GLIBC_2.4>
    10d6:	68 0a 00 00 00       	pushq  $0xa
    10db:	e9 40 ff ff ff       	jmpq   1020 <.plt>

00000000000010e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>:
    10e0:	ff 25 8a 2f 00 00    	jmpq   *0x2f8a(%rip)        # 4070 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@GLIBCXX_3.4.9>
    10e6:	68 0b 00 00 00       	pushq  $0xb
    10eb:	e9 30 ff ff ff       	jmpq   1020 <.plt>

00000000000010f0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>:
    10f0:	ff 25 82 2f 00 00    	jmpq   *0x2f82(%rip)        # 4078 <_ZNKSt5ctypeIcE13_M_widen_initEv@GLIBCXX_3.4.11>
    10f6:	68 0c 00 00 00       	pushq  $0xc
    10fb:	e9 20 ff ff ff       	jmpq   1020 <.plt>

0000000000001100 <_ZSt16__throw_bad_castv@plt>:
    1100:	ff 25 7a 2f 00 00    	jmpq   *0x2f7a(%rip)        # 4080 <_ZSt16__throw_bad_castv@GLIBCXX_3.4>
    1106:	68 0d 00 00 00       	pushq  $0xd
    110b:	e9 10 ff ff ff       	jmpq   1020 <.plt>

0000000000001110 <_ZNSt8ios_base4InitC1Ev@plt>:
    1110:	ff 25 72 2f 00 00    	jmpq   *0x2f72(%rip)        # 4088 <_ZNSt8ios_base4InitC1Ev@GLIBCXX_3.4>
    1116:	68 0e 00 00 00       	pushq  $0xe
    111b:	e9 00 ff ff ff       	jmpq   1020 <.plt>

0000000000001120 <_Unwind_Resume@plt>:
    1120:	ff 25 6a 2f 00 00    	jmpq   *0x2f6a(%rip)        # 4090 <_Unwind_Resume@GCC_3.0>
    1126:	68 0f 00 00 00       	pushq  $0xf
    112b:	e9 f0 fe ff ff       	jmpq   1020 <.plt>

Disassembly of section .text:

0000000000001130 <_start>:
    1130:	f3 0f 1e fa          	endbr64 
    1134:	31 ed                	xor    %ebp,%ebp
    1136:	49 89 d1             	mov    %rdx,%r9
    1139:	5e                   	pop    %rsi
    113a:	48 89 e2             	mov    %rsp,%rdx
    113d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1141:	50                   	push   %rax
    1142:	54                   	push   %rsp
    1143:	4c 8d 05 b6 07 00 00 	lea    0x7b6(%rip),%r8        # 1900 <__libc_csu_fini>
    114a:	48 8d 0d 3f 07 00 00 	lea    0x73f(%rip),%rcx        # 1890 <__libc_csu_init>
    1151:	48 8d 3d 05 07 00 00 	lea    0x705(%rip),%rdi        # 185d <main>
    1158:	ff 15 82 2e 00 00    	callq  *0x2e82(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    115e:	f4                   	hlt    
    115f:	90                   	nop

0000000000001160 <deregister_tm_clones>:
    1160:	48 8d 3d 49 2f 00 00 	lea    0x2f49(%rip),%rdi        # 40b0 <__TMC_END__>
    1167:	48 8d 05 42 2f 00 00 	lea    0x2f42(%rip),%rax        # 40b0 <__TMC_END__>
    116e:	48 39 f8             	cmp    %rdi,%rax
    1171:	74 15                	je     1188 <deregister_tm_clones+0x28>
    1173:	48 8b 05 5e 2e 00 00 	mov    0x2e5e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    117a:	48 85 c0             	test   %rax,%rax
    117d:	74 09                	je     1188 <deregister_tm_clones+0x28>
    117f:	ff e0                	jmpq   *%rax
    1181:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1188:	c3                   	retq   
    1189:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001190 <register_tm_clones>:
    1190:	48 8d 3d 19 2f 00 00 	lea    0x2f19(%rip),%rdi        # 40b0 <__TMC_END__>
    1197:	48 8d 35 12 2f 00 00 	lea    0x2f12(%rip),%rsi        # 40b0 <__TMC_END__>
    119e:	48 29 fe             	sub    %rdi,%rsi
    11a1:	48 c1 fe 03          	sar    $0x3,%rsi
    11a5:	48 89 f0             	mov    %rsi,%rax
    11a8:	48 c1 e8 3f          	shr    $0x3f,%rax
    11ac:	48 01 c6             	add    %rax,%rsi
    11af:	48 d1 fe             	sar    %rsi
    11b2:	74 14                	je     11c8 <register_tm_clones+0x38>
    11b4:	48 8b 05 35 2e 00 00 	mov    0x2e35(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    11bb:	48 85 c0             	test   %rax,%rax
    11be:	74 08                	je     11c8 <register_tm_clones+0x38>
    11c0:	ff e0                	jmpq   *%rax
    11c2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11c8:	c3                   	retq   
    11c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000011d0 <__do_global_dtors_aux>:
    11d0:	f3 0f 1e fa          	endbr64 
    11d4:	80 3d f5 2f 00 00 00 	cmpb   $0x0,0x2ff5(%rip)        # 41d0 <completed.7286>
    11db:	75 33                	jne    1210 <__do_global_dtors_aux+0x40>
    11dd:	55                   	push   %rbp
    11de:	48 83 3d e2 2d 00 00 	cmpq   $0x0,0x2de2(%rip)        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    11e5:	00 
    11e6:	48 89 e5             	mov    %rsp,%rbp
    11e9:	74 0d                	je     11f8 <__do_global_dtors_aux+0x28>
    11eb:	48 8b 3d ae 2e 00 00 	mov    0x2eae(%rip),%rdi        # 40a0 <__dso_handle>
    11f2:	ff 15 d0 2d 00 00    	callq  *0x2dd0(%rip)        # 3fc8 <__cxa_finalize@GLIBC_2.2.5>
    11f8:	e8 63 ff ff ff       	callq  1160 <deregister_tm_clones>
    11fd:	c6 05 cc 2f 00 00 01 	movb   $0x1,0x2fcc(%rip)        # 41d0 <completed.7286>
    1204:	5d                   	pop    %rbp
    1205:	c3                   	retq   
    1206:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    120d:	00 00 00 
    1210:	c3                   	retq   
    1211:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    1218:	00 00 00 00 
    121c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001220 <frame_dummy>:
    1220:	f3 0f 1e fa          	endbr64 
    1224:	e9 67 ff ff ff       	jmpq   1190 <register_tm_clones>
    1229:	90                   	nop

000000000000122a <_Z41__static_initialization_and_destruction_0ii>:
    122a:	83 ff 01             	cmp    $0x1,%edi
    122d:	74 01                	je     1230 <_Z41__static_initialization_and_destruction_0ii+0x6>
    122f:	c3                   	retq   
    1230:	81 fe ff ff 00 00    	cmp    $0xffff,%esi
    1236:	75 f7                	jne    122f <_Z41__static_initialization_and_destruction_0ii+0x5>
    1238:	48 83 ec 08          	sub    $0x8,%rsp
    123c:	48 8d 3d 8e 2f 00 00 	lea    0x2f8e(%rip),%rdi        # 41d1 <_ZStL8__ioinit>
    1243:	e8 c8 fe ff ff       	callq  1110 <_ZNSt8ios_base4InitC1Ev@plt>
    1248:	48 8d 15 51 2e 00 00 	lea    0x2e51(%rip),%rdx        # 40a0 <__dso_handle>
    124f:	48 8d 35 7b 2f 00 00 	lea    0x2f7b(%rip),%rsi        # 41d1 <_ZStL8__ioinit>
    1256:	48 8b 3d 9b 2d 00 00 	mov    0x2d9b(%rip),%rdi        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    125d:	e8 2e fe ff ff       	callq  1090 <__cxa_atexit@plt>
    1262:	48 83 c4 08          	add    $0x8,%rsp
    1266:	c3                   	retq   

0000000000001267 <Switch>:
    1267:	48 89 57 58          	mov    %rdx,0x58(%rdi)
    126b:	48 89 16             	mov    %rdx,(%rsi)
    126e:	c3                   	retq   
    126f:	90                   	nop

0000000000001270 <_ZN9coroutine9Scheduler15SwitchCoroutineEPNS_9CoroutineE>:
    1270:	55                   	push   %rbp
    1271:	53                   	push   %rbx
    1272:	48 83 ec 08          	sub    $0x8,%rsp
    1276:	48 89 fd             	mov    %rdi,%rbp
    1279:	48 89 f3             	mov    %rsi,%rbx
    127c:	48 8d 3d 81 0d 00 00 	lea    0xd81(%rip),%rdi        # 2004 <_IO_stdin_used+0x4>
    1283:	b8 00 00 00 00       	mov    $0x0,%eax
    1288:	e8 b3 fd ff ff       	callq  1040 <printf@plt>
    128d:	48 8b 43 28          	mov    0x28(%rbx),%rax
    1291:	48 8b 55 58          	mov    0x58(%rbp),%rdx
    1295:	48 8d 4a 28          	lea    0x28(%rdx),%rcx
    1299:	48 8d 55 58          	lea    0x58(%rbp),%rdx
    129d:	48 8d 3d 2c 05 00 00 	lea    0x52c(%rip),%rdi        # 17d0 <swtch>
    12a4:	48 89 ee             	mov    %rbp,%rsi
    12a7:	50                   	push   %rax
    12a8:	53                   	push   %rbx
    12a9:	51                   	push   %rcx
    12aa:	52                   	push   %rdx
    12ab:	56                   	push   %rsi
    12ac:	ff d7                	callq  *%rdi
    12ae:	48 83 c4 08          	add    $0x8,%rsp
    12b2:	5b                   	pop    %rbx
    12b3:	5d                   	pop    %rbp
    12b4:	c3                   	retq   

00000000000012b5 <StartCoroutine>:
    12b5:	48 83 ec 08          	sub    $0x8,%rsp
    12b9:	48 89 f8             	mov    %rdi,%rax
    12bc:	48 8b 7f 38          	mov    0x38(%rdi),%rdi
    12c0:	ff 50 30             	callq  *0x30(%rax)
    12c3:	48 83 c4 08          	add    $0x8,%rsp
    12c7:	c3                   	retq   

00000000000012c8 <_ZN9coroutine9CoroutineC1EPFmPvES1_>:
    12c8:	41 54                	push   %r12
    12ca:	55                   	push   %rbp
    12cb:	53                   	push   %rbx
    12cc:	48 89 fb             	mov    %rdi,%rbx
    12cf:	48 c7 07 00 00 01 00 	movq   $0x10000,(%rdi)
    12d6:	48 c7 47 08 ff ff ff 	movq   $0xffffffffffffffff,0x8(%rdi)
    12dd:	ff 
    12de:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
    12e5:	00 
    12e6:	48 c7 47 18 00 00 00 	movq   $0x0,0x18(%rdi)
    12ed:	00 
    12ee:	48 c7 47 20 00 00 00 	movq   $0x0,0x20(%rdi)
    12f5:	00 
    12f6:	bf 00 00 01 00       	mov    $0x10000,%edi
    12fb:	e8 c0 fd ff ff       	callq  10c0 <_Znwm@plt>
    1300:	48 89 43 10          	mov    %rax,0x10(%rbx)
    1304:	48 89 43 18          	mov    %rax,0x18(%rbx)
    1308:	4c 8d a0 00 00 01 00 	lea    0x10000(%rax),%r12
    130f:	4c 89 63 20          	mov    %r12,0x20(%rbx)
    1313:	ba 00 00 01 00       	mov    $0x10000,%edx
    1318:	be 00 00 00 00       	mov    $0x0,%esi
    131d:	48 89 c7             	mov    %rax,%rdi
    1320:	e8 3b fd ff ff       	callq  1060 <memset@plt>
    1325:	4c 89 63 18          	mov    %r12,0x18(%rbx)
    1329:	48 c7 43 28 00 00 00 	movq   $0x0,0x28(%rbx)
    1330:	00 
    1331:	c7 43 40 01 00 00 00 	movl   $0x1,0x40(%rbx)
    1338:	48 8b 2b             	mov    (%rbx),%rbp
    133b:	48 03 6b 10          	add    0x10(%rbx),%rbp
    133f:	48 89 de             	mov    %rbx,%rsi
    1342:	48 8d 3d c5 0c 00 00 	lea    0xcc5(%rip),%rdi        # 200e <_IO_stdin_used+0xe>
    1349:	b8 00 00 00 00       	mov    $0x0,%eax
    134e:	e8 ed fc ff ff       	callq  1040 <printf@plt>
    1353:	4c 8d 65 f8          	lea    -0x8(%rbp),%r12
    1357:	48 89 5d f8          	mov    %rbx,-0x8(%rbp)
    135b:	48 89 de             	mov    %rbx,%rsi
    135e:	48 8d 3d ae 0c 00 00 	lea    0xcae(%rip),%rdi        # 2013 <_IO_stdin_used+0x13>
    1365:	b8 00 00 00 00       	mov    $0x0,%eax
    136a:	e8 d1 fc ff ff       	callq  1040 <printf@plt>
    136f:	4c 89 e6             	mov    %r12,%rsi
    1372:	48 8d 3d 9a 0c 00 00 	lea    0xc9a(%rip),%rdi        # 2013 <_IO_stdin_used+0x13>
    1379:	b8 00 00 00 00       	mov    $0x0,%eax
    137e:	e8 bd fc ff ff       	callq  1040 <printf@plt>
    1383:	48 8d 05 8c 04 00 00 	lea    0x48c(%rip),%rax        # 1816 <toStart>
    138a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    138e:	48 83 ed 38          	sub    $0x38,%rbp
    1392:	48 89 6b 28          	mov    %rbp,0x28(%rbx)
    1396:	5b                   	pop    %rbx
    1397:	5d                   	pop    %rbp
    1398:	41 5c                	pop    %r12
    139a:	c3                   	retq   
    139b:	48 89 c5             	mov    %rax,%rbp
    139e:	48 8b 7b 10          	mov    0x10(%rbx),%rdi
    13a2:	48 85 ff             	test   %rdi,%rdi
    13a5:	74 05                	je     13ac <_ZN9coroutine9CoroutineC1EPFmPvES1_+0xe4>
    13a7:	e8 04 fd ff ff       	callq  10b0 <_ZdlPv@plt>
    13ac:	48 89 ef             	mov    %rbp,%rdi
    13af:	e8 6c fd ff ff       	callq  1120 <_Unwind_Resume@plt>

00000000000013b4 <_ZN9coroutine9CoroutineC1Ev>:
    13b4:	48 c7 07 00 00 01 00 	movq   $0x10000,(%rdi)
    13bb:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
    13c2:	00 
    13c3:	48 c7 47 18 00 00 00 	movq   $0x0,0x18(%rdi)
    13ca:	00 
    13cb:	48 c7 47 20 00 00 00 	movq   $0x0,0x20(%rdi)
    13d2:	00 
    13d3:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
    13da:	00 
    13db:	c7 47 40 00 00 00 00 	movl   $0x0,0x40(%rdi)
    13e2:	48 c7 47 30 00 00 00 	movq   $0x0,0x30(%rdi)
    13e9:	00 
    13ea:	48 c7 47 38 00 00 00 	movq   $0x0,0x38(%rdi)
    13f1:	00 
    13f2:	c3                   	retq   
    13f3:	90                   	nop

00000000000013f4 <_ZN9coroutine9SchedulerC1Ev>:
    13f4:	55                   	push   %rbp
    13f5:	53                   	push   %rbx
    13f6:	48 83 ec 08          	sub    $0x8,%rsp
    13fa:	48 89 fb             	mov    %rdi,%rbx
    13fd:	48 8d 47 30          	lea    0x30(%rdi),%rax
    1401:	48 89 07             	mov    %rax,(%rdi)
    1404:	48 c7 47 08 01 00 00 	movq   $0x1,0x8(%rdi)
    140b:	00 
    140c:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
    1413:	00 
    1414:	48 c7 47 18 00 00 00 	movq   $0x0,0x18(%rdi)
    141b:	00 
    141c:	c7 47 20 00 00 80 3f 	movl   $0x3f800000,0x20(%rdi)
    1423:	48 c7 47 28 00 00 00 	movq   $0x0,0x28(%rdi)
    142a:	00 
    142b:	48 c7 47 30 00 00 00 	movq   $0x0,0x30(%rdi)
    1432:	00 
    1433:	48 c7 47 38 00 00 00 	movq   $0x0,0x38(%rdi)
    143a:	00 
    143b:	48 c7 47 40 00 00 00 	movq   $0x0,0x40(%rdi)
    1442:	00 
    1443:	48 c7 47 48 00 00 00 	movq   $0x0,0x48(%rdi)
    144a:	00 
    144b:	bf 48 00 00 00       	mov    $0x48,%edi
    1450:	e8 6b fc ff ff       	callq  10c0 <_Znwm@plt>
    1455:	48 89 c5             	mov    %rax,%rbp
    1458:	48 89 c7             	mov    %rax,%rdi
    145b:	e8 54 ff ff ff       	callq  13b4 <_ZN9coroutine9CoroutineC1Ev>
    1460:	48 89 6b 58          	mov    %rbp,0x58(%rbx)
    1464:	48 83 c4 08          	add    $0x8,%rsp
    1468:	5b                   	pop    %rbx
    1469:	5d                   	pop    %rbp
    146a:	c3                   	retq   
    146b:	48 89 c5             	mov    %rax,%rbp
    146e:	48 8b 7b 38          	mov    0x38(%rbx),%rdi
    1472:	48 85 ff             	test   %rdi,%rdi
    1475:	74 05                	je     147c <_ZN9coroutine9SchedulerC1Ev+0x88>
    1477:	e8 34 fc ff ff       	callq  10b0 <_ZdlPv@plt>
    147c:	48 89 df             	mov    %rbx,%rdi
    147f:	e8 a2 00 00 00       	callq  1526 <_ZNSt10_HashtableImSt4pairIKmPN9coroutine9CoroutineEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev>
    1484:	48 89 ef             	mov    %rbp,%rdi
    1487:	e8 94 fc ff ff       	callq  1120 <_Unwind_Resume@plt>

000000000000148c <_GLOBAL__sub_I_Switch>:
    148c:	48 83 ec 08          	sub    $0x8,%rsp
    1490:	be ff ff 00 00       	mov    $0xffff,%esi
    1495:	bf 01 00 00 00       	mov    $0x1,%edi
    149a:	e8 8b fd ff ff       	callq  122a <_Z41__static_initialization_and_destruction_0ii>
    149f:	48 83 c4 08          	add    $0x8,%rsp
    14a3:	c3                   	retq   

00000000000014a4 <_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPN9coroutine9CoroutineEELb0EEEEE18_M_deallocate_nodeEPS8_>:
    14a4:	48 83 ec 08          	sub    $0x8,%rsp
    14a8:	48 89 f7             	mov    %rsi,%rdi
    14ab:	e8 00 fc ff ff       	callq  10b0 <_ZdlPv@plt>
    14b0:	48 83 c4 08          	add    $0x8,%rsp
    14b4:	c3                   	retq   
    14b5:	90                   	nop

00000000000014b6 <_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPN9coroutine9CoroutineEELb0EEEEE19_M_deallocate_nodesEPS8_>:
    14b6:	55                   	push   %rbp
    14b7:	53                   	push   %rbx
    14b8:	48 83 ec 08          	sub    $0x8,%rsp
    14bc:	48 89 fd             	mov    %rdi,%rbp
    14bf:	48 85 f6             	test   %rsi,%rsi
    14c2:	74 10                	je     14d4 <_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPN9coroutine9CoroutineEELb0EEEEE19_M_deallocate_nodesEPS8_+0x1e>
    14c4:	48 8b 1e             	mov    (%rsi),%rbx
    14c7:	48 89 ef             	mov    %rbp,%rdi
    14ca:	e8 d5 ff ff ff       	callq  14a4 <_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPN9coroutine9CoroutineEELb0EEEEE18_M_deallocate_nodeEPS8_>
    14cf:	48 89 de             	mov    %rbx,%rsi
    14d2:	eb eb                	jmp    14bf <_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPN9coroutine9CoroutineEELb0EEEEE19_M_deallocate_nodesEPS8_+0x9>
    14d4:	48 83 c4 08          	add    $0x8,%rsp
    14d8:	5b                   	pop    %rbx
    14d9:	5d                   	pop    %rbp
    14da:	c3                   	retq   
    14db:	90                   	nop

00000000000014dc <_ZNSt10_HashtableImSt4pairIKmPN9coroutine9CoroutineEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv>:
    14dc:	53                   	push   %rbx
    14dd:	48 89 fb             	mov    %rdi,%rbx
    14e0:	48 8b 77 10          	mov    0x10(%rdi),%rsi
    14e4:	e8 cd ff ff ff       	callq  14b6 <_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPN9coroutine9CoroutineEELb0EEEEE19_M_deallocate_nodesEPS8_>
    14e9:	48 8b 3b             	mov    (%rbx),%rdi
    14ec:	48 8b 43 08          	mov    0x8(%rbx),%rax
    14f0:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    14f7:	00 
    14f8:	be 00 00 00 00       	mov    $0x0,%esi
    14fd:	e8 5e fb ff ff       	callq  1060 <memset@plt>
    1502:	48 c7 43 18 00 00 00 	movq   $0x0,0x18(%rbx)
    1509:	00 
    150a:	48 c7 43 10 00 00 00 	movq   $0x0,0x10(%rbx)
    1511:	00 
    1512:	5b                   	pop    %rbx
    1513:	c3                   	retq   

0000000000001514 <_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPN9coroutine9CoroutineEELb0EEEEE21_M_deallocate_bucketsEPPNS_15_Hash_node_baseEm>:
    1514:	48 83 ec 08          	sub    $0x8,%rsp
    1518:	48 89 f7             	mov    %rsi,%rdi
    151b:	e8 90 fb ff ff       	callq  10b0 <_ZdlPv@plt>
    1520:	48 83 c4 08          	add    $0x8,%rsp
    1524:	c3                   	retq   
    1525:	90                   	nop

0000000000001526 <_ZNSt10_HashtableImSt4pairIKmPN9coroutine9CoroutineEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev>:
    1526:	53                   	push   %rbx
    1527:	48 89 fb             	mov    %rdi,%rbx
    152a:	e8 ad ff ff ff       	callq  14dc <_ZNSt10_HashtableImSt4pairIKmPN9coroutine9CoroutineEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE5clearEv>
    152f:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    1533:	48 8b 33             	mov    (%rbx),%rsi
    1536:	48 8d 43 30          	lea    0x30(%rbx),%rax
    153a:	48 39 c6             	cmp    %rax,%rsi
    153d:	74 08                	je     1547 <_ZNSt10_HashtableImSt4pairIKmPN9coroutine9CoroutineEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev+0x21>
    153f:	48 89 df             	mov    %rbx,%rdi
    1542:	e8 cd ff ff ff       	callq  1514 <_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKmPN9coroutine9CoroutineEELb0EEEEE21_M_deallocate_bucketsEPPNS_15_Hash_node_baseEm>
    1547:	5b                   	pop    %rbx
    1548:	c3                   	retq   

0000000000001549 <_ZN9coroutine4testEPv>:
    1549:	48 83 ec 08          	sub    $0x8,%rsp
    154d:	ba 11 00 00 00       	mov    $0x11,%edx
    1552:	48 8d 35 bf 0a 00 00 	lea    0xabf(%rip),%rsi        # 2018 <_IO_stdin_used+0x18>
    1559:	48 8d 3d 60 2b 00 00 	lea    0x2b60(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    1560:	e8 7b fb ff ff       	callq  10e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    1565:	48 8d 3d 54 2b 00 00 	lea    0x2b54(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    156c:	e8 df fa ff ff       	callq  1050 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>

0000000000001571 <_Z41__static_initialization_and_destruction_0ii>:
    1571:	83 ff 01             	cmp    $0x1,%edi
    1574:	74 01                	je     1577 <_Z41__static_initialization_and_destruction_0ii+0x6>
    1576:	c3                   	retq   
    1577:	81 fe ff ff 00 00    	cmp    $0xffff,%esi
    157d:	75 f7                	jne    1576 <_Z41__static_initialization_and_destruction_0ii+0x5>
    157f:	48 83 ec 08          	sub    $0x8,%rsp
    1583:	48 8d 3d 86 2c 00 00 	lea    0x2c86(%rip),%rdi        # 4210 <_ZStL8__ioinit>
    158a:	e8 81 fb ff ff       	callq  1110 <_ZNSt8ios_base4InitC1Ev@plt>
    158f:	48 8d 15 0a 2b 00 00 	lea    0x2b0a(%rip),%rdx        # 40a0 <__dso_handle>
    1596:	48 8d 35 73 2c 00 00 	lea    0x2c73(%rip),%rsi        # 4210 <_ZStL8__ioinit>
    159d:	48 8b 3d 54 2a 00 00 	mov    0x2a54(%rip),%rdi        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    15a4:	e8 e7 fa ff ff       	callq  1090 <__cxa_atexit@plt>
    15a9:	c7 05 35 2c 00 00 00 	movl   $0x0,0x2c35(%rip)        # 41e8 <_ZN9coroutineL5scmapE+0x8>
    15b0:	00 00 00 
    15b3:	48 c7 05 32 2c 00 00 	movq   $0x0,0x2c32(%rip)        # 41f0 <_ZN9coroutineL5scmapE+0x10>
    15ba:	00 00 00 00 
    15be:	48 8d 05 23 2c 00 00 	lea    0x2c23(%rip),%rax        # 41e8 <_ZN9coroutineL5scmapE+0x8>
    15c5:	48 89 05 2c 2c 00 00 	mov    %rax,0x2c2c(%rip)        # 41f8 <_ZN9coroutineL5scmapE+0x18>
    15cc:	48 89 05 2d 2c 00 00 	mov    %rax,0x2c2d(%rip)        # 4200 <_ZN9coroutineL5scmapE+0x20>
    15d3:	48 c7 05 2a 2c 00 00 	movq   $0x0,0x2c2a(%rip)        # 4208 <_ZN9coroutineL5scmapE+0x28>
    15da:	00 00 00 00 
    15de:	48 8d 15 bb 2a 00 00 	lea    0x2abb(%rip),%rdx        # 40a0 <__dso_handle>
    15e5:	48 8d 70 f8          	lea    -0x8(%rax),%rsi
    15e9:	48 8d 3d ce 01 00 00 	lea    0x1ce(%rip),%rdi        # 17be <_ZNSt3mapINSt6thread2idESt4pairIPN9coroutine9SchedulerEPNS3_9CoroutineEESt4lessIS1_ESaIS2_IKS1_S8_EEED1Ev>
    15f0:	e8 9b fa ff ff       	callq  1090 <__cxa_atexit@plt>
    15f5:	48 83 c4 08          	add    $0x8,%rsp
    15f9:	c3                   	retq   

00000000000015fa <_ZN9coroutine13CoroutineInitEv>:
    15fa:	55                   	push   %rbp
    15fb:	53                   	push   %rbx
    15fc:	48 83 ec 08          	sub    $0x8,%rsp
    1600:	48 83 3d c8 29 00 00 	cmpq   $0x0,0x29c8(%rip)        # 3fd0 <__pthread_key_create>
    1607:	00 
    1608:	74 67                	je     1671 <_ZN9coroutine13CoroutineInitEv+0x77>
    160a:	e8 91 fa ff ff       	callq  10a0 <pthread_self@plt>
    160f:	48 89 c6             	mov    %rax,%rsi
    1612:	48 85 f6             	test   %rsi,%rsi
    1615:	75 61                	jne    1678 <_ZN9coroutine13CoroutineInitEv+0x7e>
    1617:	ba 24 00 00 00       	mov    $0x24,%edx
    161c:	48 8d 35 0d 0a 00 00 	lea    0xa0d(%rip),%rsi        # 2030 <_IO_stdin_used+0x30>
    1623:	48 8d 3d 96 2a 00 00 	lea    0x2a96(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    162a:	e8 b1 fa ff ff       	callq  10e0 <_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@plt>
    162f:	48 8d 2d 8a 2a 00 00 	lea    0x2a8a(%rip),%rbp        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    1636:	48 8b 45 00          	mov    0x0(%rbp),%rax
    163a:	48 89 e9             	mov    %rbp,%rcx
    163d:	48 03 48 e8          	add    -0x18(%rax),%rcx
    1641:	48 8b 99 f0 00 00 00 	mov    0xf0(%rcx),%rbx
    1648:	48 85 db             	test   %rbx,%rbx
    164b:	74 3c                	je     1689 <_ZN9coroutine13CoroutineInitEv+0x8f>
    164d:	80 7b 38 00          	cmpb   $0x0,0x38(%rbx)
    1651:	74 3b                	je     168e <_ZN9coroutine13CoroutineInitEv+0x94>
    1653:	0f b6 43 43          	movzbl 0x43(%rbx),%eax
    1657:	0f be f0             	movsbl %al,%esi
    165a:	48 89 ef             	mov    %rbp,%rdi
    165d:	e8 ce f9 ff ff       	callq  1030 <_ZNSo3putEc@plt>
    1662:	48 89 c7             	mov    %rax,%rdi
    1665:	e8 16 fa ff ff       	callq  1080 <_ZNSo5flushEv@plt>
    166a:	48 83 c4 08          	add    $0x8,%rsp
    166e:	5b                   	pop    %rbx
    166f:	5d                   	pop    %rbp
    1670:	c3                   	retq   
    1671:	be 01 00 00 00       	mov    $0x1,%esi
    1676:	eb 9a                	jmp    1612 <_ZN9coroutine13CoroutineInitEv+0x18>
    1678:	48 8d 3d 41 2a 00 00 	lea    0x2a41(%rip),%rdi        # 40c0 <_ZSt4cout@@GLIBCXX_3.4>
    167f:	e8 ec f9 ff ff       	callq  1070 <_ZNSo9_M_insertImEERSoT_@plt>
    1684:	48 89 c5             	mov    %rax,%rbp
    1687:	eb ad                	jmp    1636 <_ZN9coroutine13CoroutineInitEv+0x3c>
    1689:	e8 72 fa ff ff       	callq  1100 <_ZSt16__throw_bad_castv@plt>
    168e:	48 89 df             	mov    %rbx,%rdi
    1691:	e8 5a fa ff ff       	callq  10f0 <_ZNKSt5ctypeIcE13_M_widen_initEv@plt>
    1696:	48 8b 03             	mov    (%rbx),%rax
    1699:	be 0a 00 00 00       	mov    $0xa,%esi
    169e:	48 89 df             	mov    %rbx,%rdi
    16a1:	ff 50 30             	callq  *0x30(%rax)
    16a4:	eb b1                	jmp    1657 <_ZN9coroutine13CoroutineInitEv+0x5d>

00000000000016a6 <_ZN9coroutine4TestEv>:
    16a6:	53                   	push   %rbx
    16a7:	48 81 ec c0 00 00 00 	sub    $0xc0,%rsp
    16ae:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    16b5:	00 00 
    16b7:	48 89 84 24 b8 00 00 	mov    %rax,0xb8(%rsp)
    16be:	00 
    16bf:	31 c0                	xor    %eax,%eax
    16c1:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    16c6:	e8 29 fd ff ff       	callq  13f4 <_ZN9coroutine9SchedulerC1Ev>
    16cb:	48 89 e7             	mov    %rsp,%rdi
    16ce:	ba 00 00 00 00       	mov    $0x0,%edx
    16d3:	48 8d 35 6f fe ff ff 	lea    -0x191(%rip),%rsi        # 1549 <_ZN9coroutine4testEPv>
    16da:	e8 e9 fb ff ff       	callq  12c8 <_ZN9coroutine9CoroutineC1EPFmPvES1_>
    16df:	48 89 e6             	mov    %rsp,%rsi
    16e2:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    16e7:	e8 84 fb ff ff       	callq  1270 <_ZN9coroutine9Scheduler15SwitchCoroutineEPNS_9CoroutineE>
    16ec:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    16f1:	48 85 ff             	test   %rdi,%rdi
    16f4:	74 05                	je     16fb <_ZN9coroutine4TestEv+0x55>
    16f6:	e8 b5 f9 ff ff       	callq  10b0 <_ZdlPv@plt>
    16fb:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
    1702:	00 
    1703:	48 85 ff             	test   %rdi,%rdi
    1706:	74 05                	je     170d <_ZN9coroutine4TestEv+0x67>
    1708:	e8 a3 f9 ff ff       	callq  10b0 <_ZdlPv@plt>
    170d:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    1712:	e8 0f fe ff ff       	callq  1526 <_ZNSt10_HashtableImSt4pairIKmPN9coroutine9CoroutineEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev>
    1717:	48 8b 84 24 b8 00 00 	mov    0xb8(%rsp),%rax
    171e:	00 
    171f:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
    1726:	00 00 
    1728:	75 44                	jne    176e <_ZN9coroutine4TestEv+0xc8>
    172a:	48 81 c4 c0 00 00 00 	add    $0xc0,%rsp
    1731:	5b                   	pop    %rbx
    1732:	c3                   	retq   
    1733:	48 89 c3             	mov    %rax,%rbx
    1736:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
    173b:	48 85 ff             	test   %rdi,%rdi
    173e:	74 05                	je     1745 <_ZN9coroutine4TestEv+0x9f>
    1740:	e8 6b f9 ff ff       	callq  10b0 <_ZdlPv@plt>
    1745:	48 8b bc 24 88 00 00 	mov    0x88(%rsp),%rdi
    174c:	00 
    174d:	48 85 ff             	test   %rdi,%rdi
    1750:	74 05                	je     1757 <_ZN9coroutine4TestEv+0xb1>
    1752:	e8 59 f9 ff ff       	callq  10b0 <_ZdlPv@plt>
    1757:	48 8d 7c 24 50       	lea    0x50(%rsp),%rdi
    175c:	e8 c5 fd ff ff       	callq  1526 <_ZNSt10_HashtableImSt4pairIKmPN9coroutine9CoroutineEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEED1Ev>
    1761:	48 89 df             	mov    %rbx,%rdi
    1764:	e8 b7 f9 ff ff       	callq  1120 <_Unwind_Resume@plt>
    1769:	48 89 c3             	mov    %rax,%rbx
    176c:	eb d7                	jmp    1745 <_ZN9coroutine4TestEv+0x9f>
    176e:	e8 5d f9 ff ff       	callq  10d0 <__stack_chk_fail@plt>

0000000000001773 <_GLOBAL__sub_I__ZN9coroutine13CoroutineInitEv>:
    1773:	48 83 ec 08          	sub    $0x8,%rsp
    1777:	be ff ff 00 00       	mov    $0xffff,%esi
    177c:	bf 01 00 00 00       	mov    $0x1,%edi
    1781:	e8 eb fd ff ff       	callq  1571 <_Z41__static_initialization_and_destruction_0ii>
    1786:	48 83 c4 08          	add    $0x8,%rsp
    178a:	c3                   	retq   
    178b:	90                   	nop

000000000000178c <_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_S2_IPN9coroutine9SchedulerEPNS4_9CoroutineEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E>:
    178c:	41 54                	push   %r12
    178e:	55                   	push   %rbp
    178f:	53                   	push   %rbx
    1790:	49 89 fc             	mov    %rdi,%r12
    1793:	48 89 f3             	mov    %rsi,%rbx
    1796:	48 85 db             	test   %rbx,%rbx
    1799:	74 1d                	je     17b8 <_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_S2_IPN9coroutine9SchedulerEPNS4_9CoroutineEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E+0x2c>
    179b:	48 8b 73 18          	mov    0x18(%rbx),%rsi
    179f:	4c 89 e7             	mov    %r12,%rdi
    17a2:	e8 e5 ff ff ff       	callq  178c <_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_S2_IPN9coroutine9SchedulerEPNS4_9CoroutineEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E>
    17a7:	48 8b 6b 10          	mov    0x10(%rbx),%rbp
    17ab:	48 89 df             	mov    %rbx,%rdi
    17ae:	e8 fd f8 ff ff       	callq  10b0 <_ZdlPv@plt>
    17b3:	48 89 eb             	mov    %rbp,%rbx
    17b6:	eb de                	jmp    1796 <_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_S2_IPN9coroutine9SchedulerEPNS4_9CoroutineEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E+0xa>
    17b8:	5b                   	pop    %rbx
    17b9:	5d                   	pop    %rbp
    17ba:	41 5c                	pop    %r12
    17bc:	c3                   	retq   
    17bd:	90                   	nop

00000000000017be <_ZNSt3mapINSt6thread2idESt4pairIPN9coroutine9SchedulerEPNS3_9CoroutineEESt4lessIS1_ESaIS2_IKS1_S8_EEED1Ev>:
    17be:	48 83 ec 08          	sub    $0x8,%rsp
    17c2:	48 8b 77 10          	mov    0x10(%rdi),%rsi
    17c6:	e8 c1 ff ff ff       	callq  178c <_ZNSt8_Rb_treeINSt6thread2idESt4pairIKS1_S2_IPN9coroutine9SchedulerEPNS4_9CoroutineEEESt10_Select1stISA_ESt4lessIS1_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E>
    17cb:	48 83 c4 08          	add    $0x8,%rsp
    17cf:	c3                   	retq   

00000000000017d0 <swtch>:
    17d0:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
    17d5:	48 8b 4c 24 10       	mov    0x10(%rsp),%rcx
    17da:	48 8b 54 24 18       	mov    0x18(%rsp),%rdx
    17df:	48 8b 74 24 20       	mov    0x20(%rsp),%rsi
    17e4:	48 8b 7c 24 28       	mov    0x28(%rsp),%rdi
    17e9:	53                   	push   %rbx
    17ea:	41 54                	push   %r12
    17ec:	41 55                	push   %r13
    17ee:	41 56                	push   %r14
    17f0:	41 57                	push   %r15
    17f2:	48 89 e3             	mov    %rsp,%rbx
    17f5:	48 89 1a             	mov    %rbx,(%rdx)
    17f8:	48 89 fc             	mov    %rdi,%rsp
    17fb:	48 89 c7             	mov    %rax,%rdi
    17fe:	48 89 f0             	mov    %rsi,%rax
    1801:	48 89 ce             	mov    %rcx,%rsi
    1804:	48 89 c2             	mov    %rax,%rdx
    1807:	e8 5b fa ff ff       	callq  1267 <Switch>
    180c:	41 5f                	pop    %r15
    180e:	41 5e                	pop    %r14
    1810:	41 5d                	pop    %r13
    1812:	41 5c                	pop    %r12
    1814:	5b                   	pop    %rbx
    1815:	c3                   	retq   

0000000000001816 <toStart>:
    1816:	48 8b 3c 24          	mov    (%rsp),%rdi
    181a:	e8 96 fa ff ff       	callq  12b5 <StartCoroutine>
    181f:	c3                   	retq   

0000000000001820 <_Z41__static_initialization_and_destruction_0ii>:
    1820:	83 ff 01             	cmp    $0x1,%edi
    1823:	74 01                	je     1826 <_Z41__static_initialization_and_destruction_0ii+0x6>
    1825:	c3                   	retq   
    1826:	81 fe ff ff 00 00    	cmp    $0xffff,%esi
    182c:	75 f7                	jne    1825 <_Z41__static_initialization_and_destruction_0ii+0x5>
    182e:	48 83 ec 08          	sub    $0x8,%rsp
    1832:	48 8d 3d d8 29 00 00 	lea    0x29d8(%rip),%rdi        # 4211 <_ZStL8__ioinit>
    1839:	e8 d2 f8 ff ff       	callq  1110 <_ZNSt8ios_base4InitC1Ev@plt>
    183e:	48 8d 15 5b 28 00 00 	lea    0x285b(%rip),%rdx        # 40a0 <__dso_handle>
    1845:	48 8d 35 c5 29 00 00 	lea    0x29c5(%rip),%rsi        # 4211 <_ZStL8__ioinit>
    184c:	48 8b 3d a5 27 00 00 	mov    0x27a5(%rip),%rdi        # 3ff8 <_ZNSt8ios_base4InitD1Ev@GLIBCXX_3.4>
    1853:	e8 38 f8 ff ff       	callq  1090 <__cxa_atexit@plt>
    1858:	48 83 c4 08          	add    $0x8,%rsp
    185c:	c3                   	retq   

000000000000185d <main>:
    185d:	48 83 ec 08          	sub    $0x8,%rsp
    1861:	e8 94 fd ff ff       	callq  15fa <_ZN9coroutine13CoroutineInitEv>
    1866:	e8 3b fe ff ff       	callq  16a6 <_ZN9coroutine4TestEv>
    186b:	b8 00 00 00 00       	mov    $0x0,%eax
    1870:	48 83 c4 08          	add    $0x8,%rsp
    1874:	c3                   	retq   

0000000000001875 <_GLOBAL__sub_I_main>:
    1875:	48 83 ec 08          	sub    $0x8,%rsp
    1879:	be ff ff 00 00       	mov    $0xffff,%esi
    187e:	bf 01 00 00 00       	mov    $0x1,%edi
    1883:	e8 98 ff ff ff       	callq  1820 <_Z41__static_initialization_and_destruction_0ii>
    1888:	48 83 c4 08          	add    $0x8,%rsp
    188c:	c3                   	retq   
    188d:	0f 1f 00             	nopl   (%rax)

0000000000001890 <__libc_csu_init>:
    1890:	f3 0f 1e fa          	endbr64 
    1894:	41 57                	push   %r15
    1896:	49 89 d7             	mov    %rdx,%r15
    1899:	41 56                	push   %r14
    189b:	49 89 f6             	mov    %rsi,%r14
    189e:	41 55                	push   %r13
    18a0:	41 89 fd             	mov    %edi,%r13d
    18a3:	41 54                	push   %r12
    18a5:	4c 8d 25 e4 24 00 00 	lea    0x24e4(%rip),%r12        # 3d90 <__frame_dummy_init_array_entry>
    18ac:	55                   	push   %rbp
    18ad:	48 8d 2d fc 24 00 00 	lea    0x24fc(%rip),%rbp        # 3db0 <__init_array_end>
    18b4:	53                   	push   %rbx
    18b5:	4c 29 e5             	sub    %r12,%rbp
    18b8:	48 83 ec 08          	sub    $0x8,%rsp
    18bc:	67 e8 3e f7 ff ff    	addr32 callq 1000 <_init>
    18c2:	48 c1 fd 03          	sar    $0x3,%rbp
    18c6:	74 1e                	je     18e6 <__libc_csu_init+0x56>
    18c8:	31 db                	xor    %ebx,%ebx
    18ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    18d0:	4c 89 fa             	mov    %r15,%rdx
    18d3:	4c 89 f6             	mov    %r14,%rsi
    18d6:	44 89 ef             	mov    %r13d,%edi
    18d9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    18dd:	48 83 c3 01          	add    $0x1,%rbx
    18e1:	48 39 dd             	cmp    %rbx,%rbp
    18e4:	75 ea                	jne    18d0 <__libc_csu_init+0x40>
    18e6:	48 83 c4 08          	add    $0x8,%rsp
    18ea:	5b                   	pop    %rbx
    18eb:	5d                   	pop    %rbp
    18ec:	41 5c                	pop    %r12
    18ee:	41 5d                	pop    %r13
    18f0:	41 5e                	pop    %r14
    18f2:	41 5f                	pop    %r15
    18f4:	c3                   	retq   
    18f5:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    18fc:	00 00 00 00 

0000000000001900 <__libc_csu_fini>:
    1900:	f3 0f 1e fa          	endbr64 
    1904:	c3                   	retq   

Disassembly of section .fini:

0000000000001908 <_fini>:
    1908:	f3 0f 1e fa          	endbr64 
    190c:	48 83 ec 08          	sub    $0x8,%rsp
    1910:	48 83 c4 08          	add    $0x8,%rsp
    1914:	c3                   	retq   
