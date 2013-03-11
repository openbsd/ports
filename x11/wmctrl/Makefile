# $OpenBSD: Makefile,v 1.15 2013/03/11 11:46:16 espie Exp $

COMMENT=	interact with an EWMH/NetWM window manager
DISTNAME=	wmctrl-1.07
REVISION=	3

CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}/dist/

HOMEPAGE=	http://tomas.styblo.name/wmctrl/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xmu c glib-2.0

MODULES=	devel/gettext

LIB_DEPENDS=	devel/glib2

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
