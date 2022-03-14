COMMENT =	breadth-first version of the UNIX find command
CATEGORIES =	sysutils

GH_ACCOUNT =	tavianator
GH_PROJECT =	bfs
GH_TAGNAME =	2.4.1

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c onig

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =	textproc/oniguruma

USE_GMAKE =	Yes
MAKE_FLAGS =	CFLAGS="${CFLAGS} -DBFS_HAS_SYS_ACL=0"

FAKE_FLAGS =	DESTDIR=

TEST_DEPENDS =	shells/bash

TEST_TARGET =	check

.include <bsd.port.mk>
