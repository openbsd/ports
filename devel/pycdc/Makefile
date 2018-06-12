# $OpenBSD: Makefile,v 1.1.1.1 2018/06/12 13:01:02 rpointel Exp $

COMMENT =	python bytecode disassembler and decompiler

DISTNAME =	pycdc-0.0.20180428

GH_ACCOUNT =	zrax
GH_PROJECT =	pycdc
GH_COMMIT =	1c01ca7ee626f6794b879c5690eb741a64711625

CATEGORIES =	devel

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	devel/cmake \
		lang/python

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

WANTLIB += ${COMPILER_LIBCXX} c m

pre-test:
	sed -i "s|#!/bin/bash|#!\${LOCALBASE}/bin/bash|" ${WRKSRC}/pycdc_test.sh

TEST_DEPENDS =		shells/bash

.include <bsd.port.mk>
