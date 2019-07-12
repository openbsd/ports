# $OpenBSD: Makefile,v 1.36 2019/07/12 20:45:15 sthen Exp $

COMMENT =		C++ interface for pango

GNOME_PROJECT =		pangomm
GNOME_VERSION =		2.42.0

CATEGORIES =		devel x11

SHARED_LIBS +=  pangomm-1.4          10.2     # 1.30

HOMEPAGE =		http://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xext Xrender cairo cairomm-1.0
WANTLIB += expat ffi fontconfig freetype fribidi glib-2.0 glibmm-2.4
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 harfbuzz
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png sigc-2.0 xcb xcb-render xcb-shm z

MODULES =		x11/gnome

# c++11
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		devel/glib2mm \
			devel/pango \
			graphics/cairomm

CONFIGURE_STYLE=	gnu
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

.include <bsd.port.mk>
