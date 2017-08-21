# $OpenBSD: Makefile,v 1.13 2017/08/21 19:43:20 jasper Exp $

DISTNAME =	ucpp-1.3.2
REVISION =	1
COMMENT =	C preprocessor and lexer
CATEGORIES =	devel
HOMEPAGE =	https://github.com/lpsantil/ucpp
MASTER_SITES =	https://distfiles.nl/

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
