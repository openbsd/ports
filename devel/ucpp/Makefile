# $OpenBSD: Makefile,v 1.12 2016/10/01 11:54:15 naddy Exp $

DISTNAME =	ucpp-1.3.2
REVISION =	0
COMMENT =	C preprocessor and lexer
CATEGORIES =	devel
HOMEPAGE =	https://code.google.com/p/ucpp
MASTER_SITES =	${MASTER_SITE_GOOGLECODE:=ucpp/}

PERMIT_PACKAGE_CDROM =	Yes
WANTLIB =		c

MAINTAINER =	Marc Espie <espie@openbsd.org>
MAKE_FLAGS =	FLAGS='${CFLAGS} -D_POSIX_SOURCE' CC='${CC}'
NO_TEST =	Yes
WRKDIST =	${WRKDIR}/ucpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ucpp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ucpp.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
