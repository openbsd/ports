# $OpenBSD: Makefile,v 1.3 2009/09/18 10:23:52 ajacoutot Exp $

COMMENT =		C++ interface for pango

V =			2.24.0
DISTNAME =		pangomm-${V}
CATEGORIES =		devel x11

SHARED_LIBS +=		pangomm-1.4	8.0 #.1.30

HOMEPAGE =		http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_GNOME:=sources/pangomm/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext

LIB_DEPENDS =		pangoft2-1.0,pangocairo-1.0,pango-1.0::devel/pango \
			glibmm-2.4::devel/glib2mm \
			cairomm-1.0::graphics/cairomm

WANTLIB =		X11 Xau Xdmcp Xrender cairo expat fontconfig freetype \
			glib-2.0 glitz gmodule-2.0 gobject-2.0 m pcre pixman-1 \
			png pthread-stubs sigc-2.0 xcb z
USE_X11 =		Yes
USE_GMAKE =		Yes
USE_LIBTOOL =		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include"

.include <bsd.port.mk>
