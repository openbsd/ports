# $OpenBSD: Makefile,v 1.2 2010/10/18 21:41:47 espie Exp $

COMMENT =		retrieves syskey and extract hashes

DISTNAME =		samdump2-2.0.1
CATEGORIES =		security

HOMEPAGE =		http://ophcrack.sourceforge.net/

MAINTAINER =		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		c ssl crypto

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ophcrack/}

EXTRACT_SUFX =		.tar.bz2

MAKE_FLAGS =		CC="${CC}" CFLAGS="${CFLAGS}"

USE_GMAKE =		Yes
USE_GROFF =	Yes

NO_REGRESS =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile
                
do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/samdump2 ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/samdump2.1     ${PREFIX}/man/man1
                
.include <bsd.port.mk>
