# $OpenBSD: Makefile,v 1.22 2020/05/15 16:51:26 naddy Exp $

COMMENT=	interact with an EWMH/NetWM window manager
DISTNAME=	wmctrl-1.07
REVISION=	9

CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	https://sites.google.com/site/tstyblo/wmctrl/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xmu c glib-2.0 intl

LIB_DEPENDS=	devel/gettext,-runtime \
		devel/glib2

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
