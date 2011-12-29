# $OpenBSD: Makefile,v 1.8 2011/12/29 17:51:27 espie Exp $

DISTNAME =	ucpp-1.3.2
COMMENT =	C preprocessor and lexer
CATEGORIES =	devel
HOMEPAGE =	http://code.google.com/p/ucpp
MASTER_SITES =	http://ucpp.googlecode.com/files/

PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
WANTLIB =		c

MAINTAINER =	Marc Espie <espie@openbsd.org>
MAKE_FLAGS =	FLAGS='${CFLAGS} -D_POSIX_SOURCE' CC='${CC}'
USE_GROFF =	Yes
NO_REGRESS =	Yes
WRKDIST =	${WRKDIR}/ucpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ucpp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ucpp.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
