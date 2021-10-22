# $OpenBSD: Makefile,v 1.26 2021/10/22 09:13:04 sthen Exp $

COMMENT =	reference implementation of JPEG-2000

V =		2.0.33
DISTNAME =	jasper-$V

SHARED_LIBS =	jasper		4.0

CATEGORIES =	graphics

HOMEPAGE =	https://www.ece.uvic.ca/~frodo/jasper/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c m

MASTER_SITES =	https://github.com/jasper-software/jasper/releases/download/version-$V/

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
