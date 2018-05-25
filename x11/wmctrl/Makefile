# $OpenBSD: Makefile,v 1.19 2018/05/25 13:01:41 espie Exp $

COMMENT=	interact with an EWMH/NetWM window manager
DISTNAME=	wmctrl-1.07
REVISION=	7

CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	https://sites.google.com/site/tstyblo/wmctrl/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xmu c glib-2.0 intl

LIB_DEPENDS=	devel/gettext \
		devel/glib2

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
