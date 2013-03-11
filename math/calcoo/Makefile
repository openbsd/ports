# $OpenBSD: Makefile,v 1.45 2013/03/11 11:23:54 espie Exp $

COMMENT=	RPN and algebraic scientific calculator

DISTNAME=	calcoo-1.3.18
REVISION=	7
CATEGORIES=	math
HOMEPAGE=	http://calcoo.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=calcoo/}

MODULES=	devel/gettext
LIB_DEPENDS=	x11/gtk+2

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z gdk_pixbuf-2.0
WANTLIB += gdk-x11-2.0>=1000 gtk-x11-2.0>=1000
WANTLIB += GL gthread-2.0 pthread xcb-render xcb-shm

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
