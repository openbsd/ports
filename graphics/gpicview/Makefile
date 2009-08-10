# $OpenBSD: Makefile,v 1.4 2009/08/10 06:31:44 kili Exp $

COMMENT =	simple and fast image viewer for X

DISTNAME =	gpicview-0.1.11
PKGNAME=	${DISTNAME}p0

CATEGORIES =	graphics x11

HOMEPAGE =	http://lxde.org/

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 jpeg
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += gio-2.0 pthread pthread-stubs xcb z

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=lxde/}

MODULES =	devel/gettext

LIB_DEPENDS =	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
RUN_DEPENDS =	:desktop-file-utils-*:devel/desktop-file-utils

USE_X11 =	yes
USE_LIBTOOL =	yes

CONFIGURE_STYLE = gnu

CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread" \
		lt_cv_path_SED=/usr/bin/sed

CONFIGURE_ARGS = ${CONFIGURE_SHARED}

.include <bsd.port.mk>
