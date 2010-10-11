# $OpenBSD: Makefile,v 1.11 2010/10/11 08:14:08 jasper Exp $

COMMENT =	gpx file viewer

VERSION =	0.2.0
DISTNAME =	gpx-viewer-${VERSION}
REVISION =	2

CATEGORIES =	geo x11

HOMEPAGE =	http://blog.sarine.nl/gpx-viewer/
MAINTAINER =	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://edge.launchpad.net/gpx-viewer/trunk/${VERSION}/+download/

CONFIGURE_STYLE =       autoconf
AUTOCONF_VERSION =      2.62
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_VALAC=""
USE_GMAKE =		yes

MODULES =	devel/gettext \
		textproc/intltool
LIB_DEPENDS =	::devel/libunique \
		:libchamplain->=0.8.0:geo/libchamplain/core \
		::x11/gnome/gdl
RUN_DEPENDS =	::devel/desktop-file-utils

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += clutter-glx-1.0 clutter-gtk-0.10 expat fontconfig freetype
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnutls gobject-2.0 gpg-error gthread-2.0
WANTLIB += gtk-x11-2.0 json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 tasn1 xcb xml2 z Xxf86vm drm
WANTLIB += ORBit-2 dbus-1 dbus-glib-1 gconf-2 gnome-keyring proxy
WANTLIB += soup-gnome-2.4 champlain-0.8 champlain-gtk-0.8
WANTLIB += gdl-1 xcb-render xcb-render-util unique-1.0

# Upstream doesn't build their own releases.
post-configure:
	echo "#define PACKAGE_URL \"${HOMEPAGE}\"" >> ${WRKSRC}/config.h

.include <bsd.port.mk>
