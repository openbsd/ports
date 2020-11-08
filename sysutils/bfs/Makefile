# $OpenBSD: Makefile,v 1.14 2020/11/08 20:37:14 bcallah Exp $

COMMENT =	breadth-first version of the UNIX find command
CATEGORIES =	sysutils

GH_ACCOUNT =	tavianator
GH_PROJECT =	bfs
GH_TAGNAME =	2.0

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c

DEBUG_PACKAGES =	${BUILD_PACKAGES}

USE_GMAKE =	Yes
MAKE_FLAGS =	CFLAGS="${CFLAGS} -DBFS_HAS_SYS_ACL=0"

FAKE_FLAGS =	DESTDIR=

TEST_DEPENDS =	shells/bash

TEST_TARGET =	check

.include <bsd.port.mk>
