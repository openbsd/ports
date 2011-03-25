# $OpenBSD: Makefile,v 1.15 2011/03/25 08:43:48 ajacoutot Exp $

COMMENT =		C++ interface for pango

V =			2.28.1
DISTNAME =		pangomm-${V}
CATEGORIES =		devel x11

SHARED_LIBS +=		pangomm-1.4	10.0 # .1.30

HOMEPAGE =		http://www.gtkmm.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_GNOME:=sources/pangomm/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext

LIB_DEPENDS =		devel/pango \
			devel/glib2mm \
			graphics/cairomm

WANTLIB =		X11 Xau Xdmcp Xrender cairo expat fontconfig freetype \
			glib-2.0 gmodule-2.0 gobject-2.0 m pcre pixman-1 \
			png pthread-stubs sigc-2.0 xcb z xcb-render \
			gthread-2.0 pangoft2-1.0 \
			pangocairo-1.0 pango-1.0 glibmm-2.4 cairomm-1.0 \
			GL Xdamage Xext Xfixes Xxf86vm drm stdc++ xcb-shm

USE_GMAKE =		Yes
USE_LIBTOOL =		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include"

.include <bsd.port.mk>
