# $OpenBSD: Makefile,v 1.11 2014/01/01 20:46:28 naddy Exp $

DISTNAME =	ucpp-1.3.2
REVISION =	0
COMMENT =	C preprocessor and lexer
CATEGORIES =	devel
HOMEPAGE =	https://code.google.com/p/ucpp
MASTER_SITES =	https://ucpp.googlecode.com/files/

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
