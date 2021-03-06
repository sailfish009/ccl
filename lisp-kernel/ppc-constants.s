/*
 * Copyright 2004-2009 Clozure Associates
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/* Register usage: */


define(`rzero',`r0')	
define(`sp',`r1')

define(`imm0',`r3')
define(`imm1',`r4')
define(`imm2',`r5')
define(`imm3',`r6')
define(`imm4',`r7')
define(`imm5',`r8')
define(`allocptr',`r9')
define(`allocbase',`r10')
define(`nargs',`r11')
define(`tsp',`r12')      /* temp-consing stack. */

define(`loc_pc',`r14') 	 /* code vector locative */
define(`vsp',`r15')
define(`fn',`r16')
define(`temp3',`r17')
define(`temp2',`r18')
define(`temp1',`r19')
define(`temp0',`r20')
define(`arg_x',`r21')
define(`arg_y',`r22')
define(`arg_z',`r23')
define(`save7',`r24')
define(`save6',`r25')
define(`save5',`r26')
define(`save4',`r27')
define(`save3',`r28')
define(`save2',`r29')
define(`save1',`r30')
define(`save0',`r31')

define(`fname',`temp3')
define(`nfn',`temp2')
define(`next_method_context',`temp1')
define(`first_nvr',`save7')
define(`second_nvr',`save6')        
define(`third_nvr',`save5')
define(`fourth_nvr',`save4')        
define(`fifth_nvr',`save3')
define(`sixth_nvr',`save2')        
define(`seventh_nvr',`save1')
define(`eighth_nvr',`save0')        
define(`nargregs',`3')
	
r0 = 0
r1 = 1
r2 = 2
r3 = 3
r4 = 4
r5 = 5
r6 = 6
r7 = 7
r8 = 8
r9 = 9
r10 = 10
r11 = 11
r12 = 12
r13 = 13
r14 = 14
r15 = 15
r16 = 16
r17 = 17
r18 = 18
r19 = 19
r20 = 20
r21 = 21
r22 = 22
r23 = 23
r24 = 24
r25 = 25
r26 = 26
r27 = 27
r28 = 28
r29 = 29
r30 = 30
r31 = 31

/* Lisp code keeps 0.0 in fp_zero */
define(`fp_zero',`f31')   /* a non-volatile reg as far as FFI is concerned. */
define(`fp_s32conv',`f30')   /* for s32->fp conversion */
	
/* registers, as used in destrucuring-bind/macro-bind */

define(`whole_reg',`temp1')
define(`arg_reg',`temp3')
define(`keyvect_reg',`temp2')
define(`mask_req_start',`24')
define(`mask_req_width',`8')
define(`mask_opt_start',`16')
define(`mask_opt_width',`8')
define(`mask_key_start',`8')
define(`mask_key_width',`8')
define(`mask_initopt',`7')
define(`mask_keyp',`6') /*  note that keyp can be true even when 0 keys. */
define(`mask_aok',`5')
define(`mask_restp',`4')

ifdef(`DARWIN',`
	define(`STACK_ALIGN',16)
	define(`STACK_ALIGN_MASK',15)
',`
	define(`STACK_ALIGN',8)
	define(`STACK_ALIGN_MASK',7)
')

/* Indices in %builtin-functions% */
_builtin_plus = 0	/* +-2 */
_builtin_minus = 1	/* --2 */
_builtin_times = 2	/* *-2 */
_builtin_div = 3	/* /-2 */
_builtin_eq = 4		/* =-2 */
_builtin_ne = 5		/* /-2 */
_builtin_gt = 6		/* >-2 */
_builtin_ge = 7		/* >=-2 */
_builtin_lt = 8		/* <-2 */
_builtin_le = 9		/* <=-2 */
_builtin_eql = 10	/* eql */
_builtin_length = 11	/* length */
_builtin_seqtype = 12	/* sequence-type */
_builtin_assq = 13	/* assq */
_builtin_memq = 14	/* memq */
_builtin_logbitp = 15	/* logbitp */
_builtin_logior = 16	/* logior-2 */
_builtin_logand = 17	/* logand-2 */
_builtin_ash = 18	/* ash */
_builtin_negate = 19	/* %negate */
_builtin_logxor = 20	/* logxor-2 */
_builtin_aref1 = 21	/* %aref1 */
_builtin_aset1 = 22	/* %aset1 */

	/* FPSCR status bits */
fpscr_FX = 0
fpscr_FEX = 1
fpscr_VX = 2
fpscr_OX = 3
fpscr_UX = 4
fpscr_ZX = 5
fpscr_XX = 6
	/* FPSCR control bits */
fpscr_VE = 24
fpscr_OE = 25
fpscr_UE = 26
fpscr_ZE = 27
fpscr_XE = 28
	

/* This should be (a) an (UNSIGNED-BYTE 16) and (b) one less than */
/* TSTACK_SOFTPROT (defined in "area.h") */
		
tstack_alloc_limit = 0xffff
        
define(`TCR_STATE_FOREIGN',1)
define(`TCR_STATE_LISP',0)
define(`TCR_STATE_EXCEPTION_WAIT',2)
define(`TCR_STATE_EXCEPTION_RETURN',4)

        

        	
ifdef(`PPC64',`
        include(ppc-constants64.s)
',`
        include(ppc-constants32.s)
')

	
