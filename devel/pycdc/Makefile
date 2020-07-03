# $OpenBSD: Makefile,v 1.6 2020/07/03 21:12:52 sthen Exp $

COMMENT =	python bytecode disassembler and decompiler

DISTNAME =	pycdc-0.0.20180428
REVISION =	3

GH_ACCOUNT =	zrax
GH_PROJECT =	pycdc
GH_COMMIT =	1c01ca7ee626f6794b879c5690eb741a64711625

CATEGORIES =	devel

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake \
		lang/python

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

WANTLIB += ${COMPILER_LIBCXX} c m

COMPILER =		base-clang ports-gcc base-gcc

pre-test:
	sed -i "s|#!/bin/bash|#!\${LOCALBASE}/bin/bash|" ${WRKSRC}/pycdc_test.sh

TEST_DEPENDS =		shells/bash

.include <bsd.port.mk>
