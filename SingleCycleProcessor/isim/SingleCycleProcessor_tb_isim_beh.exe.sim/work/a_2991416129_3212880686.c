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
static const char *ng0 = "//VBOXSVR/MacHomeD/ise/SingleCycleProcessor/ALUDecoder.vhd";



static void work_a_2991416129_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned char t18;
    int t19;
    int t20;
    int t21;
    int t22;
    int t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 2952);
    t3 = (t0 + 1676);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(26, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 2955);
    t8 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t8 = 0;

LAB7:    if (t8 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t15 = (0 - 1);
    t9 = (t15 * -1);
    t16 = (1U * t9);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t8 = *((unsigned char *)t1);
    t18 = (t8 == (unsigned char)3);
    if (t18 != 0)
        goto LAB11;

LAB12:    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t15 = (1 - 1);
    t9 = (t15 * -1);
    t16 = (1U * t9);
    t17 = (0 + t16);
    t1 = (t2 + t17);
    t8 = *((unsigned char *)t1);
    t18 = (t8 == (unsigned char)3);
    if (t18 != 0)
        goto LAB13;

LAB14:
LAB3:    t1 = (t0 + 1632);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(27, ng0);
    t6 = (t0 + 2957);
    t10 = (t0 + 1676);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t6, 3U);
    xsi_driver_first_trans_fast_port(t10);
    goto LAB3;

LAB5:    t9 = 0;

LAB8:    if (t9 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t4 = (t2 + t9);
    t5 = (t1 + t9);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB6;

LAB10:    t9 = (t9 + 1);
    goto LAB8;

LAB11:    xsi_set_current_line(29, ng0);
    t3 = (t0 + 2960);
    t5 = (t0 + 1676);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t10 = (t7 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t3, 3U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

LAB13:    xsi_set_current_line(31, ng0);
    t3 = (t0 + 592U);
    t4 = *((char **)t3);
    t3 = (t0 + 2963);
    t19 = xsi_mem_cmp(t3, t4, 6U);
    if (t19 == 1)
        goto LAB16;

LAB22:    t6 = (t0 + 2969);
    t20 = xsi_mem_cmp(t6, t4, 6U);
    if (t20 == 1)
        goto LAB17;

LAB23:    t10 = (t0 + 2975);
    t21 = xsi_mem_cmp(t10, t4, 6U);
    if (t21 == 1)
        goto LAB18;

LAB24:    t12 = (t0 + 2981);
    t22 = xsi_mem_cmp(t12, t4, 6U);
    if (t22 == 1)
        goto LAB19;

LAB25:    t14 = (t0 + 2987);
    t24 = xsi_mem_cmp(t14, t4, 6U);
    if (t24 == 1)
        goto LAB20;

LAB26:
LAB21:    xsi_set_current_line(37, ng0);

LAB15:    goto LAB3;

LAB16:    xsi_set_current_line(32, ng0);
    t25 = (t0 + 2993);
    t27 = (t0 + 1676);
    t28 = (t27 + 32U);
    t29 = *((char **)t28);
    t30 = (t29 + 40U);
    t31 = *((char **)t30);
    memcpy(t31, t25, 3U);
    xsi_driver_first_trans_fast_port(t27);
    goto LAB15;

LAB17:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 2996);
    t3 = (t0 + 1676);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB15;

LAB18:    xsi_set_current_line(34, ng0);
    t1 = (t0 + 2999);
    t3 = (t0 + 1676);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB15;

LAB19:    xsi_set_current_line(35, ng0);
    t1 = (t0 + 3002);
    t3 = (t0 + 1676);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB15;

LAB20:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 3005);
    t3 = (t0 + 1676);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    memcpy(t7, t1, 3U);
    xsi_driver_first_trans_fast_port(t3);
    goto LAB15;

LAB27:;
}


extern void work_a_2991416129_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2991416129_3212880686_p_0};
	xsi_register_didat("work_a_2991416129_3212880686", "isim/SingleCycleProcessor_tb_isim_beh.exe.sim/work/a_2991416129_3212880686.didat");
	xsi_register_executes(pe);
}
