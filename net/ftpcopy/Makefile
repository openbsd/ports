# $OpenBSD: Makefile,v 1.12 2010/10/18 18:36:47 espie Exp $

COMMENT =	FTP listing and transfer tools

DISTNAME =	ftpcopy-0.6.7
CATEGORIES =	net

HOMEPAGE =	http://www.ohse.de/uwe/ftpcopy.html

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c

MASTER_SITES =	http://www.ohse.de/uwe/ftpcopy/

MAKE_FLAGS =	CC="${CC}"
FAKE_FLAGS =	prefix="${DESTDIR}/${PREFIX}"

WRKDIST =	${WRKDIR}/web/${DISTNAME}

USE_GROFF =	Yes
NO_REGRESS =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/command/ftpcopy ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/command/ftpls ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/command/ftpcp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/doc/* ${PREFIX}/man/man1
                
.include <bsd.port.mk>
