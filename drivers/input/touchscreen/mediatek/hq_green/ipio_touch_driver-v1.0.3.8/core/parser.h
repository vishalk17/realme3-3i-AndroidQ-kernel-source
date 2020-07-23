/*******************************************************************************
** Copyright (C), 2008-2018, OPPO Mobile Comm Corp., Ltd.
** FILE: - parser.h
** Description : This program is for ili9881 driver parser.h
** Version: 1.0
** Date : 2018/5/17
** Author: Zhonghua.Hu@ODM_WT.BSP.TP-FP.TP
**
** -------------------------Revision History:----------------------------------
**  <author>	 <data> 	<version >			<desc>
**
**
*******************************************************************************/

#ifndef __PARSER_H
#define __PARSER_H
#include "config.h"

#define BENCHMARK_KEY_NAME "benchmark_data"
#define NODE_TYPE_KEY_NAME "node_type_data"
#define TYPE_MARK "[driver type mark]"
#define VALUE 0

extern void core_parser_nodetype(int32_t* type_ptr, char *desp);
extern void core_parser_benchmark(int32_t* max_ptr, int32_t* min_ptr, int8_t type, char *desp);
extern int core_parser_get_u8_array(char *key, uint8_t *buf, uint16_t base, size_t len);
extern int core_parser_get_tdf_value(int index, char *str);
extern int core_parser_get_int_data(char *section, char *keyname, char *rv);
extern int core_parser_path(char *path);

#endif
