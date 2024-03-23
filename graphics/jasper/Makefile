COMMENT =	reference implementation of JPEG-2000

V =		4.2.1
DISTNAME =	jasper-$V

SHARED_LIBS =	jasper		6.1

CATEGORIES =	graphics

HOMEPAGE =	https://www.ece.uvic.ca/~frodo/jasper/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =	c m pthread

SITES =	https://github.com/jasper-software/jasper/releases/download/version-$V/

# -stdc=gnu11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

MODULES =	devel/cmake

# XXX needed at configure time else tests are skipped
BUILD_DEPENDS +=	shells/bash
TEST_DEPENDS =	shells/bash

CONFIGURE_ARGS = -DJAS_ENABLE_DOC=false \
		-DJAS_ENABLE_LATEX=false \
		-DJAS_ENABLE_LIBJPEG=false \
		-DJAS_ENABLE_OPENGL=false

.include <bsd.port.mk>
