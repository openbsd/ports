# $OpenBSD: Makefile,v 1.13 2001/07/09 17:11:29 pvalchev Exp $

COMMENT=	minimal window manager

DISTNAME=	wmx-6
CATEGORIES=	x11
NEED_VERSION=	1.363

HOMEPAGE=	http://www.all-day-breakfast.com/wmx/
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_X11=	Yes
CONFIGURE_STYLE=	gnu

do-install:
	@${INSTALL_PROGRAM} ${WRKSRC}/wmx ${PREFIX}/bin
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmx
	@${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmx

.include <bsd.port.mk>
