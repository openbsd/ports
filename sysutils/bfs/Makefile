COMMENT =	breadth-first version of the UNIX find command
CATEGORIES =	sysutils

GH_ACCOUNT =	tavianator
GH_PROJECT =	bfs
GH_TAGNAME =	3.0.4
REVISION =	0

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c onig pthread

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# C17
COMPILER =	base-clang ports-gcc
COMPILER_LANGS = c

LIB_DEPENDS =	textproc/oniguruma

USE_GMAKE =	Yes
MAKE_FILE =	GNUmakefile

FAKE_FLAGS =	DESTDIR= MANDIR="${DESTDIR}${PREFIX}/man"

TEST_DEPENDS =	shells/bash

TEST_TARGET =	check

.include <bsd.port.mk>
