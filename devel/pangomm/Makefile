# $OpenBSD: Makefile,v 1.2 2009/08/10 06:31:08 kili Exp $

COMMENT =		C++ interface for pango

DISTNAME =		pangomm-2.14.1
PKGNAME =		${DISTNAME}p0
CATEGORIES =		devel x11

SHARED_LIBS +=		pangomm-1.4	7.0 #.1.30

HOMEPAGE =		http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_GNOME:=sources/pangomm/2.14/}
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
