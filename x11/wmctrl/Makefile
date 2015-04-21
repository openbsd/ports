# $OpenBSD: Makefile,v 1.17 2015/04/21 18:13:10 sthen Exp $

COMMENT=	interact with an EWMH/NetWM window manager
DISTNAME=	wmctrl-1.07
REVISION=	5

CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	https://sites.google.com/site/tstyblo/wmctrl/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xmu c glib-2.0 pthread

MODULES=	devel/gettext

LIB_DEPENDS=	devel/glib2

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
