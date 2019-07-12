# $OpenBSD: Makefile,v 1.5 2019/07/12 20:49:40 sthen Exp $

COMMENT =	print a tree of the directory structure

V =		1.8.0
DISTNAME =	tree-$V
PKGNAME=	colortree-$V
CATEGORIES =	sysutils

HOMEPAGE =	http://mama.indstate.edu/users/ice/tree/

MAINTAINER =	David Dahlberg <david+bsd@dahlberg.cologne>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	c

MASTER_SITES =	http://mama.indstate.edu/users/ice/tree/src/
EXTRACT_SUFX =	.tgz

NO_TEST =	Yes
SEPARATE_BUILD =	Yes

do-build:
	cd ${WRKBUILD}; ${CC} ${CFLAGS} -o tree ${WRKSRC}/*.c

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tree ${PREFIX}/bin/colortree
	${INSTALL_MAN} ${WRKSRC}/doc/tree.1 ${PREFIX}/man/man1/colortree.1

.include <bsd.port.mk>
