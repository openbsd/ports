# $OpenBSD: Makefile,v 1.8 2019/07/12 20:49:39 sthen Exp $

COMMENT =	breadth-first version of the UNIX find command
CATEGORIES =	sysutils

GH_ACCOUNT =	tavianator
GH_PROJECT =	bfs
GH_TAGNAME =	1.4.1

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c

USE_GMAKE =	Yes
MAKE_FLAGS =	CFLAGS="${CFLAGS} -DBFS_HAS_SYS_ACL=0"

FAKE_FLAGS =	DESTDIR=

NO_TEST =	Yes

.include <bsd.port.mk>
