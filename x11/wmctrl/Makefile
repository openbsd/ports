# $OpenBSD: Makefile,v 1.7 2008/02/13 17:51:13 jcs Exp $

COMMENT=	interact with an EWMH/NetWM window manager
DISTNAME=	wmctrl-1.07
CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}dist/

HOMEPAGE=	http://sweb.cz/tripie/utils/wmctrl/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		ICE SM X11 Xmu c iconv intl

USE_X11=	Yes

LIB_DEPENDS=	glib-2.0.>=0.11::devel/glib2

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
