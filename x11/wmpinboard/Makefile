# $OpenBSD: Makefile,v 1.8 2002/09/17 14:46:07 wilfried Exp $

COMMENT=		'wm-dockapp; resembling a miniature pin board'

DISTNAME=		wmpinboard-1.0
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://www.tu-ilmenau.de/~gomar/stuff/wmpinboard/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/src/wmpinboard ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/wmpinboard.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
