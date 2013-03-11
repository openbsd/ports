# $OpenBSD: Makefile,v 1.14 2013/03/11 11:46:09 espie Exp $

COMMENT=		X11 program launcher

DISTNAME=		gmrun-0.9.2
REVISION=		2

CATEGORIES=		x11

HOMEPAGE=		http://gmrun.sourceforge.net/

MAINTAINER=		Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += stdc++ z pthread-stubs xcb gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += popt gtk-x11-2.0

MODULES=		devel/gettext

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gmrun/}

LIB_DEPENDS=		x11/gtk+2 \
			devel/popt


CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
