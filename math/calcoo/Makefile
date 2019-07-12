# $OpenBSD: Makefile,v 1.49 2019/07/12 20:47:40 sthen Exp $

COMMENT=	RPN and algebraic scientific calculator

DISTNAME=	calcoo-1.3.18
REVISION=	10
CATEGORIES=	math
HOMEPAGE=	http://calcoo.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=calcoo/}

LIB_DEPENDS=	x11/gtk+2

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += z

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
