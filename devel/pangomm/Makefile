# $OpenBSD: Makefile,v 1.26 2015/03/29 11:52:38 ajacoutot Exp $

COMMENT =		C++ interface for pango

GNOME_PROJECT =		pangomm
GNOME_VERSION =		2.36.0

CATEGORIES =		devel x11

SHARED_LIBS +=  pangomm-1.4          10.1     # 1.30

HOMEPAGE =		http://www.gtkmm.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xext Xrender cairo cairomm-1.0 expat ffi fontconfig
WANTLIB += freetype glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sigc-2.0 stdc++ xcb xcb-render xcb-shm z

MODULES =		devel/gettext \
			x11/gnome

LIB_DEPENDS =		devel/glib2mm \
			devel/pango \
			graphics/cairomm

CONFIGURE_STYLE=	gnu
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

.include <bsd.port.mk>
