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


static void work_a_2725559894_3212880686_p_0(char *t0)
{
    char t9[16];
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
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(47, ng0);
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
        goto LAB3;

LAB4:
LAB7:    t22 = (t0 + 776U);
    t23 = *((char **)t22);
    t22 = (t0 + 2744);
    t24 = (t22 + 32U);
    t25 = *((char **)t24);
    t26 = (t25 + 40U);
    t27 = *((char **)t26);
    memcpy(t27, t23, 32U);
    xsi_driver_first_trans_fast(t22);

LAB2:    t28 = (t0 + 2668);
    *((int *)t28) = 1;

LAB1:    return;
LAB3:    t10 = (t0 + 776U);
    t11 = *((char **)t10);
    t10 = (t0 + 4624U);
    t12 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t9, t11, t10);
    t13 = (t9 + 12U);
    t14 = *((unsigned int *)t13);
    t15 = (1U * t14);
    t16 = (32U != t15);
    if (t16 == 1)
        goto LAB5;

LAB6:    t17 = (t0 + 2744);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 32U);
    xsi_driver_first_trans_fast(t17);
    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t15, 0);
    goto LAB6;

LAB8:    goto LAB2;

}

static void work_a_2725559894_3212880686_p_1(char *t0)
{
    char t1[16];
    char t2[16];
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t3 = (t0 + 684U);
    t4 = *((char **)t3);
    t3 = (t0 + 4608U);
    t5 = (t0 + 1144U);
    t6 = *((char **)t5);
    t5 = (t0 + 4672U);
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t2, t4, t3, t6, t5);
    t8 = (t0 + 592U);
    t9 = *((char **)t8);
    t10 = (2 - 2);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t8 = (t9 + t13);
    t14 = *((unsigned char *)t8);
    t15 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t1, t7, t2, t14);
    t16 = (t1 + 12U);
    t17 = *((unsigned int *)t16);
    t18 = (1U * t17);
    t19 = (32U != t18);
    if (t19 == 1)
        goto LAB5;

LAB6:    t20 = (t0 + 2780);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    memcpy(t24, t15, 32U);
    xsi_driver_first_trans_fast(t20);

LAB2:    t25 = (t0 + 2676);
    *((int *)t25) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(32U, t18, 0);
    goto LAB6;

}

static void work_a_2725559894_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(52, ng0);

LAB3:    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 2816);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 32U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 2684);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2725559894_3212880686_p_3(char *t0)
{
    char t5[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1236U);
    t2 = *((char **)t1);
    t1 = (t0 + 4688U);
    t3 = (t0 + 4875);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 31;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (31 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:
LAB5:    t15 = (t0 + 2852);
    t16 = (t15 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t15);

LAB2:    t20 = (t0 + 2692);
    *((int *)t20) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 2852);
    t11 = (t7 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_2725559894_3212880686_p_4(char *t0)
{
    char t18[16];
    char t33[16];
    char t34[16];
    char t35[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;
    int t11;
    char *t12;
    char *t13;
    int t14;
    char *t15;
    char *t16;
    int t17;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    unsigned char t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned char t36;

LAB0:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = (2 - 1);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 4907);
    t8 = xsi_mem_cmp(t6, t1, 2U);
    if (t8 == 1)
        goto LAB3;

LAB8:    t9 = (t0 + 4909);
    t11 = xsi_mem_cmp(t9, t1, 2U);
    if (t11 == 1)
        goto LAB4;

LAB9:    t12 = (t0 + 4911);
    t14 = xsi_mem_cmp(t12, t1, 2U);
    if (t14 == 1)
        goto LAB5;

LAB10:    t15 = (t0 + 4913);
    t17 = xsi_mem_cmp(t15, t1, 2U);
    if (t17 == 1)
        goto LAB6;

LAB11:
LAB7:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 4946);
    t6 = (t0 + 2888);
    t7 = (t6 + 32U);
    t9 = *((char **)t7);
    t10 = (t9 + 40U);
    t12 = *((char **)t10);
    memcpy(t12, t1, 32U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t1 = (t0 + 2700);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(59, ng0);
    t19 = (t0 + 684U);
    t20 = *((char **)t19);
    t19 = (t0 + 4608U);
    t21 = (t0 + 1144U);
    t22 = *((char **)t21);
    t21 = (t0 + 4672U);
    t23 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t18, t20, t19, t22, t21);
    t24 = (t18 + 12U);
    t25 = *((unsigned int *)t24);
    t26 = (1U * t25);
    t27 = (32U != t26);
    if (t27 == 1)
        goto LAB13;

LAB14:    t28 = (t0 + 2888);
    t29 = (t28 + 32U);
    t30 = *((char **)t29);
    t31 = (t30 + 40U);
    t32 = *((char **)t31);
    memcpy(t32, t23, 32U);
    xsi_driver_first_trans_fast(t28);
    goto LAB2;

LAB4:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 4608U);
    t6 = (t0 + 1144U);
    t7 = *((char **)t6);
    t6 = (t0 + 4672U);
    t9 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t18, t2, t1, t7, t6);
    t10 = (t18 + 12U);
    t3 = *((unsigned int *)t10);
    t4 = (1U * t3);
    t27 = (32U != t4);
    if (t27 == 1)
        goto LAB15;

LAB16:    t12 = (t0 + 2888);
    t13 = (t12 + 32U);
    t15 = *((char **)t13);
    t16 = (t15 + 40U);
    t19 = *((char **)t16);
    memcpy(t19, t9, 32U);
    xsi_driver_first_trans_fast(t12);
    goto LAB2;

LAB5:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t3 = (31 - 31);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 2888);
    t7 = (t6 + 32U);
    t9 = *((char **)t7);
    t10 = (t9 + 40U);
    t12 = *((char **)t10);
    memcpy(t12, t1, 32U);
    xsi_driver_first_trans_fast(t6);
    goto LAB2;

LAB6:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 4915);
    t6 = (t0 + 4943);
    t10 = ((IEEE_P_2592010699) + 2332);
    t12 = (t33 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 27;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t8 = (27 - 0);
    t3 = (t8 * 1);
    t3 = (t3 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t3;
    t13 = (t34 + 0U);
    t15 = (t13 + 0U);
    *((int *)t15) = 0;
    t15 = (t13 + 4U);
    *((int *)t15) = 2;
    t15 = (t13 + 8U);
    *((int *)t15) = 1;
    t11 = (2 - 0);
    t3 = (t11 * 1);
    t3 = (t3 + 1);
    t15 = (t13 + 12U);
    *((unsigned int *)t15) = t3;
    t9 = xsi_base_array_concat(t9, t18, t10, (char)97, t1, t33, (char)97, t6, t34, (char)101);
    t15 = (t0 + 1052U);
    t16 = *((char **)t15);
    t14 = (31 - 31);
    t3 = (t14 * -1);
    t4 = (1U * t3);
    t5 = (0 + t4);
    t15 = (t16 + t5);
    t27 = *((unsigned char *)t15);
    t20 = ((IEEE_P_2592010699) + 2332);
    t19 = xsi_base_array_concat(t19, t35, t20, (char)97, t9, t18, (char)99, t27, (char)101);
    t25 = (28U + 3U);
    t26 = (t25 + 1U);
    t36 = (32U != t26);
    if (t36 == 1)
        goto LAB17;

LAB18:    t21 = (t0 + 2888);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    t24 = (t23 + 40U);
    t28 = *((char **)t24);
    memcpy(t28, t19, 32U);
    xsi_driver_first_trans_fast(t21);
    goto LAB2;

LAB12:;
LAB13:    xsi_size_not_matching(32U, t26, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(32U, t4, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(32U, t26, 0);
    goto LAB18;

}


extern void work_a_2725559894_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2725559894_3212880686_p_0,(void *)work_a_2725559894_3212880686_p_1,(void *)work_a_2725559894_3212880686_p_2,(void *)work_a_2725559894_3212880686_p_3,(void *)work_a_2725559894_3212880686_p_4};
	xsi_register_didat("work_a_2725559894_3212880686", "isim/ALU_isim_beh.exe.sim/work/a_2725559894_3212880686.didat");
	xsi_register_executes(pe);
}
