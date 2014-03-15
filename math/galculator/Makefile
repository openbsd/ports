# $OpenBSD: Makefile,v 1.51 2014/03/15 19:41:03 naddy Exp $

COMMENT=	GTK-based scientific calculator

DISTNAME=	galculator-2.1.3
CATEGORIES=	math
HOMEPAGE=	http://galculator.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=galculator/}
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi c \
		cairo cairo-gobject dbus-1 expat ffi fontconfig freetype \
		gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 graphite2 gthread-2.0 gtk-3 harfbuzz \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
		pixman-1 png pthread pthread-stubs xcb xcb-render \
		xcb-shm z

MODULES=	devel/gettext \
		textproc/intltool

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+2,-guic
LIB_DEPENDS=	x11/gtk+3

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		ac_cv_lib_quadmath_sinhq=no

.include <bsd.port.mk>
