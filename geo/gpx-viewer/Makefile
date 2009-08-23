# $OpenBSD: Makefile,v 1.1.1.1 2009/08/23 17:37:07 landry Exp $

COMMENT =	gpx file viewer

VERSION =	0.1.1
DISTNAME =	gpx-viewer-${VERSION}

CATEGORIES =	geo x11

HOMEPAGE =	http://blog.sarine.nl/gpx-viewer/
MAINTAINER =	Landry Breuil <gaston@gcu.info>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://edge.launchpad.net/gpx-viewer/trunk/${VERSION}/+download/

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		DATADIRNAME=share
USE_GMAKE =		yes

MODULES =	devel/gettext
LIB_DEPENDS =	champlain-0.3,champlain-gtk-0.3:libchamplain->=0.3.5:geo/libchamplain/core
RUN_DEPENDS =	::devel/desktop-file-utils

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo clutter-cairo-0.8
WANTLIB += clutter-glx-0.8 clutter-gtk-0.8 expat fontconfig freetype
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnutls gobject-2.0 gpg-error gthread-2.0
WANTLIB += gtk-x11-2.0 json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 tasn1 xcb xml2 z

.include <bsd.port.mk>
