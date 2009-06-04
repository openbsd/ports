# $OpenBSD: Makefile,v 1.18 2009/06/04 23:37:50 naddy Exp $

COMMENT=	minimal window manager

DISTNAME=	wmx-6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11

HOMEPAGE=	http://www.all-day-breakfast.com/wmx/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license
WANTLIB=		X11 Xext Xpm c m stdc++

USE_X11=	Yes
CONFIGURE_STYLE=	gnu

NO_REGRESS=	Yes

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/wmx ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmx
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmx

.include <bsd.port.mk>
