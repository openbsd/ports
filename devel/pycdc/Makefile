COMMENT =	python bytecode disassembler and decompiler

DISTNAME =	pycdc-0.0.20180428
REVISION =	8

GH_ACCOUNT =	zrax
GH_PROJECT =	pycdc
GH_COMMIT =	1c01ca7ee626f6794b879c5690eb741a64711625

CATEGORIES =	devel

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake \
		lang/python

WANTLIB += ${COMPILER_LIBCXX} c m

COMPILER =		base-clang ports-gcc base-gcc

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

pre-test:
	sed -i "s|#!/bin/bash|#!\${LOCALBASE}/bin/bash|" ${WRKSRC}/pycdc_test.sh

TEST_DEPENDS =		shells/bash

.include <bsd.port.mk>
