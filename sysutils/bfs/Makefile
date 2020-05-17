# $OpenBSD: Makefile,v 1.13 2020/05/17 20:43:09 bcallah Exp $

COMMENT =	breadth-first version of the UNIX find command
CATEGORIES =	sysutils

GH_ACCOUNT =	tavianator
GH_PROJECT =	bfs
GH_TAGNAME =	1.7

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c

DEBUG_PACKAGES =	${BUILD_PACKAGES}

USE_GMAKE =	Yes
MAKE_FLAGS =	CFLAGS="${CFLAGS} -DBFS_HAS_SYS_ACL=0"

FAKE_FLAGS =	DESTDIR=

TEST_TARGET =	check

.include <bsd.port.mk>
