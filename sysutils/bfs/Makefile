# $OpenBSD: Makefile,v 1.5 2019/04/15 21:04:14 bcallah Exp $

COMMENT =	breadth-first version of the UNIX find command
REVISION =	0
CATEGORIES =	sysutils

GH_ACCOUNT =	tavianator
GH_PROJECT =	bfs
GH_TAGNAME =	1.3.3

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

USE_GMAKE =	Yes
MAKE_FLAGS =	CFLAGS="${CFLAGS} -DBFS_HAS_SYS_ACL=0"

FAKE_FLAGS =	DESTDIR=

NO_TEST =	Yes

.include <bsd.port.mk>
