# $OpenBSD: Makefile,v 1.4 2001/03/09 14:28:53 wilfried Exp $

DISTNAME=		wmpinboard-1.0
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.340

HOMEPAGE=		http://www.tu-ilmenau.de/~gomar/stuff/wmpinboard/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
CONFIGURE_STYLE=	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/wmpinboard ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/wmpinboard.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
