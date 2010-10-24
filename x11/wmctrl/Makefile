# $OpenBSD: Makefile,v 1.9 2010/10/24 21:15:35 ajacoutot Exp $

COMMENT=	interact with an EWMH/NetWM window manager
DISTNAME=	wmctrl-1.07
REVISION=	0

CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}dist/

HOMEPAGE=	http://sweb.cz/tripie/utils/wmctrl/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		ICE SM X11 Xmu c glib-2.0

MODULES=		devel/gettext


LIB_DEPENDS=	::devel/glib2

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
