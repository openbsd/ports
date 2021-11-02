# $OpenBSD: Makefile,v 1.8 2021/11/02 00:01:12 sthen Exp $

COMMENT =	python bytecode disassembler and decompiler

DISTNAME =	pycdc-0.0.20180428
REVISION =	4

GH_ACCOUNT =	zrax
GH_PROJECT =	pycdc
GH_COMMIT =	1c01ca7ee626f6794b879c5690eb741a64711625

CATEGORIES =	devel

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake \
		lang/python

WANTLIB += ${COMPILER_LIBCXX} c m

COMPILER =		base-clang ports-gcc base-gcc

pre-test:
	sed -i "s|#!/bin/bash|#!\${LOCALBASE}/bin/bash|" ${WRKSRC}/pycdc_test.sh

TEST_DEPENDS =		shells/bash

.include <bsd.port.mk>
