# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:31 espie Exp $

DISTNAME =	ucpp-1.3.2
COMMENT =	C preprocessor and lexer
CATEGORIES =	devel
HOMEPAGE =	http://code.google.com/p/ucpp
MASTER_SITES =	http://ucpp.googlecode.com/files/

PERMIT_PACKAGE_CDROM =	Yes
WANTLIB =		c

MAINTAINER =	Marc Espie <espie@openbsd.org>
MAKE_FLAGS =	FLAGS='${CFLAGS} -D_POSIX_SOURCE' CC='${CC}'
USE_GROFF =	Yes
NO_TEST =	Yes
WRKDIST =	${WRKDIR}/ucpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ucpp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ucpp.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
