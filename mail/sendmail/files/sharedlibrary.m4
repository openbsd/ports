divert(-1)
#
# Copyright (c) 1999-2001, 2006 Sendmail, Inc. and its suppliers.
#	All rights reserved.
#
# By using this file, you agree to the terms and conditions set
# forth in the LICENSE file which can be found at the top level of
# the sendmail distribution.
#
#
#  Definitions for Makefile construction for sendmail
#
#	$Id: sharedlibrary.m4,v 1.1 2014/09/16 19:54:29 jca Exp $
#
divert(0)dnl
include(confBUILDTOOLSDIR`/M4/'bldM4_TYPE_DIR`/links.m4')dnl
bldLIST_PUSH_ITEM(`bldC_PRODUCTS', bldCURRENT_PRODUCT)dnl
bldPUSH_TARGET(bldCURRENT_PRODUCT.so.${MILTER_SOVER})dnl
bldPUSH_INSTALL_TARGET(`install-'bldCURRENT_PRODUCT)dnl
bldPUSH_CLEAN_TARGET(bldCURRENT_PRODUCT`-clean')dnl

include(confBUILDTOOLSDIR`/M4/'bldM4_TYPE_DIR`/defines.m4')
divert(bldTARGETS_SECTION)
bldCURRENT_PRODUCT.so.${MILTER_SOVER}: ${BEFORE} ${bldCURRENT_PRODUCT`OBJS'}
	${LD} ${LDOPTS_SO} -o bldCURRENT_PRODUCT.so.${MILTER_SOVER} ${bldCURRENT_PRODUCT`OBJS'}
ifdef(`bldLINK_SOURCES', `bldMAKE_SOURCE_LINKS(bldLINK_SOURCES)')

install-`'bldCURRENT_PRODUCT: bldCURRENT_PRODUCT.so.${MILTER_SOVER}
ifdef(`bldINSTALLABLE', `	${INSTALL} -c -o ${LIBOWN} -g ${LIBGRP} -m ${LIBMODE} bldCURRENT_PRODUCT.so.${MILTER_SOVER} ${DESTDIR}${LIBDIR}/bldCURRENT_PRODUCT.so.${MILTER_SOVER}')

bldCURRENT_PRODUCT-clean:
	rm -f ${OBJS} bldCURRENT_PRODUCT.so ${MANPAGES}

divert(0)
COPTS+= confCCOPTS_SO
