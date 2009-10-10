# $OpenBSD: Makefile,v 1.3 2009/10/10 23:35:26 landry Exp $

COMMENT =	gpx file viewer

VERSION =	0.1.1
DISTNAME =	gpx-viewer-${VERSION}
PKGNAME=	${DISTNAME}p1

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

MODULES =	devel/gettext \
		textproc/intltool
LIB_DEPENDS =	champlain-0.4,champlain-gtk-0.4:libchamplain->=0.4.0:geo/libchamplain/core
RUN_DEPENDS =	::devel/desktop-file-utils

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += clutter-glx-1.0 clutter-gtk-0.10 expat fontconfig freetype
WANTLIB += gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnutls gobject-2.0 gpg-error gthread-2.0
WANTLIB += gtk-x11-2.0 json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 tasn1 xcb xml2 z

.include <bsd.port.mk>
