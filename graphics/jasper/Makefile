# $OpenBSD: Makefile,v 1.24 2019/07/12 20:47:01 sthen Exp $

COMMENT =	reference implementation of JPEG-2000

DISTNAME =	jasper-2.0.14
FIX_EXTRACT_PERMISSIONS=Yes

SHARED_LIBS =	jasper		3.0

CATEGORIES =	graphics

HOMEPAGE =	https://www.ece.uvic.ca/~frodo/jasper/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c m

MASTER_SITES =	https://www.ece.uvic.ca/~frodo/jasper/software/

# -stdc=gnu11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

MODULES =	devel/cmake

# XXX needed at configure time else tests are skipped
TEST_DEPENDS =	shells/bash

CONFIGURE_ARGS = -DJAS_ENABLE_AUTOMATIC_DEPENDENCIES=false \
		-DJAS_ENABLE_LIBJPEG=false \
		-DJAS_ENABLE_OPENGL=false

post-extract:
	sed -i '1s@^#!.*bash@#!${LOCALBASE}/bin/bash@' ${WRKSRC}/test/bin/*

.include <bsd.port.mk>
