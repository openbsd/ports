# $OpenBSD: Makefile,v 1.1.1.1 2001/01/17 16:32:52 naddy Exp $

DISTNAME=	wmpinboard-1.0
CATEGORIES=	x11
NEED_VERSION=	1.340
HOMEPAGE=	http://www.tu-ilmenau.de/~gomar/stuff/wmpinboard/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Peter Stromberg <home@wilfried.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
CONFIGURE_STYLE=	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/wmpinboard ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/wmpinboard.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
