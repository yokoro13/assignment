/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//VBOXSVR/MacHomeD/ise/SingleCycleProcessor/ALU.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(47, ng0);

LAB3:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 2288);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2236);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0832606739_3212880686_p_1(char *t0)
{
    char t9[16];
    char t22[16];
    char t23[16];
    char t24[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    unsigned char t8;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    int t32;
    int t33;
    int t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned char t41;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = (2 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 2324);
    t10 = (t1 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 32U);
    xsi_driver_first_trans_fast(t1);

LAB3:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t10 = ((IEEE_P_2592010699) + 2332);
    t11 = (t0 + 4008U);
    t1 = xsi_base_array_concat(t1, t23, t10, (char)99, (unsigned char)2, (char)97, t2, t11, (char)101);
    t12 = (t0 + 1144U);
    t13 = *((char **)t12);
    t17 = ((IEEE_P_2592010699) + 2332);
    t18 = (t0 + 4072U);
    t12 = xsi_base_array_concat(t12, t24, t17, (char)99, (unsigned char)2, (char)97, t13, t18, (char)101);
    t19 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t22, t1, t23, t12, t24);
    t20 = (t0 + 592U);
    t21 = *((char **)t20);
    t3 = (2 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t20 = (t21 + t6);
    t7 = *((unsigned char *)t20);
    t25 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t9, t19, t22, t7);
    t26 = (t9 + 12U);
    t14 = *((unsigned int *)t26);
    t15 = (1U * t14);
    t8 = (33U != t15);
    if (t8 == 1)
        goto LAB7;

LAB8:    t27 = (t0 + 2360);
    t28 = (t27 + 32U);
    t29 = *((char **)t28);
    t30 = (t29 + 40U);
    t31 = *((char **)t30);
    memcpy(t31, t25, 33U);
    xsi_driver_first_trans_fast(t27);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t4 = (2 - 1);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t10 = (t0 + 4276);
    t3 = xsi_mem_cmp(t10, t1, 2U);
    if (t3 == 1)
        goto LAB10;

LAB15:    t12 = (t0 + 4278);
    t32 = xsi_mem_cmp(t12, t1, 2U);
    if (t32 == 1)
        goto LAB11;

LAB16:    t17 = (t0 + 4280);
    t33 = xsi_mem_cmp(t17, t1, 2U);
    if (t33 == 1)
        goto LAB12;

LAB17:    t19 = (t0 + 4282);
    t34 = xsi_mem_cmp(t19, t1, 2U);
    if (t34 == 1)
        goto LAB13;

LAB18:
LAB14:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 4347);
    t10 = (t0 + 2396);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t17 = *((char **)t13);
    memcpy(t17, t1, 32U);
    xsi_driver_first_trans_fast(t10);

LAB9:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 4088U);
    t10 = (t0 + 4379);
    t12 = (t9 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 31;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t3 = (31 - 0);
    t4 = (t3 * 1);
    t4 = (t4 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t4;
    t7 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t10, t9);
    if (t7 != 0)
        goto LAB29;

LAB31:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 2432);
    t2 = (t1 + 32U);
    t10 = *((char **)t2);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB30:    t1 = (t0 + 2244);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t10 = (t0 + 776U);
    t11 = *((char **)t10);
    t10 = (t0 + 4024U);
    t12 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t9, t11, t10);
    t13 = (t9 + 12U);
    t14 = *((unsigned int *)t13);
    t15 = (1U * t14);
    t16 = (32U != t15);
    if (t16 == 1)
        goto LAB5;

LAB6:    t17 = (t0 + 2324);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 32U);
    xsi_driver_first_trans_fast(t17);
    goto LAB3;

LAB5:    xsi_size_not_matching(32U, t15, 0);
    goto LAB6;

LAB7:    xsi_size_not_matching(33U, t15, 0);
    goto LAB8;

LAB10:    xsi_set_current_line(62, ng0);
    t21 = (t0 + 684U);
    t25 = *((char **)t21);
    t21 = (t0 + 4008U);
    t26 = (t0 + 1144U);
    t27 = *((char **)t26);
    t26 = (t0 + 4072U);
    t28 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t9, t25, t21, t27, t26);
    t29 = (t9 + 12U);
    t14 = *((unsigned int *)t29);
    t15 = (1U * t14);
    t7 = (32U != t15);
    if (t7 == 1)
        goto LAB20;

LAB21:    t30 = (t0 + 2396);
    t31 = (t30 + 32U);
    t35 = *((char **)t31);
    t36 = (t35 + 40U);
    t37 = *((char **)t36);
    memcpy(t37, t28, 32U);
    xsi_driver_first_trans_fast(t30);
    goto LAB9;

LAB11:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 4008U);
    t10 = (t0 + 1144U);
    t11 = *((char **)t10);
    t10 = (t0 + 4072U);
    t12 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t9, t2, t1, t11, t10);
    t13 = (t9 + 12U);
    t4 = *((unsigned int *)t13);
    t5 = (1U * t4);
    t7 = (32U != t5);
    if (t7 == 1)
        goto LAB22;

LAB23:    t17 = (t0 + 2396);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 32U);
    xsi_driver_first_trans_fast(t17);
    goto LAB9;

LAB12:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t4 = (32 - 31);
    t5 = (t4 * 1U);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t10 = (t0 + 2396);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t17 = *((char **)t13);
    memcpy(t17, t1, 32U);
    xsi_driver_first_trans_fast(t10);
    goto LAB9;

LAB13:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = (2 - 2);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t7 == (unsigned char)3);
    if (t8 != 0)
        goto LAB24;

LAB26:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 4315);
    t10 = (t0 + 2396);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t17 = *((char **)t13);
    memcpy(t17, t1, 32U);
    xsi_driver_first_trans_fast(t10);

LAB25:    goto LAB9;

LAB19:;
LAB20:    xsi_size_not_matching(32U, t15, 0);
    goto LAB21;

LAB22:    xsi_size_not_matching(32U, t5, 0);
    goto LAB23;

LAB24:    xsi_set_current_line(69, ng0);
    t10 = (t0 + 4284);
    t12 = (t0 + 4312);
    t18 = ((IEEE_P_2592010699) + 2332);
    t19 = (t22 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 0;
    t20 = (t19 + 4U);
    *((int *)t20) = 27;
    t20 = (t19 + 8U);
    *((int *)t20) = 1;
    t32 = (27 - 0);
    t14 = (t32 * 1);
    t14 = (t14 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t14;
    t20 = (t23 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 0;
    t21 = (t20 + 4U);
    *((int *)t21) = 2;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t33 = (2 - 0);
    t14 = (t33 * 1);
    t14 = (t14 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t14;
    t17 = xsi_base_array_concat(t17, t9, t18, (char)97, t10, t22, (char)97, t12, t23, (char)101);
    t21 = (t0 + 1052U);
    t25 = *((char **)t21);
    t34 = (32 - 32);
    t14 = (t34 * -1);
    t15 = (1U * t14);
    t38 = (0 + t15);
    t21 = (t25 + t38);
    t16 = *((unsigned char *)t21);
    t27 = ((IEEE_P_2592010699) + 2332);
    t26 = xsi_base_array_concat(t26, t24, t27, (char)97, t17, t9, (char)99, t16, (char)101);
    t39 = (28U + 3U);
    t40 = (t39 + 1U);
    t41 = (32U != t40);
    if (t41 == 1)
        goto LAB27;

LAB28:    t28 = (t0 + 2396);
    t29 = (t28 + 32U);
    t30 = *((char **)t29);
    t31 = (t30 + 40U);
    t35 = *((char **)t31);
    memcpy(t35, t26, 32U);
    xsi_driver_first_trans_fast(t28);
    goto LAB25;

LAB27:    xsi_size_not_matching(32U, t40, 0);
    goto LAB28;

LAB29:    xsi_set_current_line(78, ng0);
    t13 = (t0 + 2432);
    t17 = (t13 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t13);
    goto LAB30;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0,(void *)work_a_0832606739_3212880686_p_1};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/SingleCycleProcessor_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
