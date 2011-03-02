# $OpenBSD: Makefile,v 1.24 2011/03/02 14:07:09 shadchin Exp $

SHARED_ONLY =		Yes

COMMENT =		gtk+2 media player based on BMP and XMMS

DISTNAME =		audacious-2.4.4

SHARED_LIBS =		audclient	1.1	# 2.0

CATEGORIES =		audio multimedia

HOMEPAGE =		http://audacious-media-player.org/

# GPLv3
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo dbus-1>=6 dbus-glib-1 drm execinfo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 guess
WANTLIB += m mcs mowgli pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z

MASTER_SITES =		http://distfiles.atheme.org/

EXTRACT_SUFX =		.tgz

MODULES =		devel/gettext

BUILD_DEPENDS =		textproc/libxml
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		devel/libexecinfo \
			devel/libguess \
			devel/mcs>=0.7.0 \
			devel/mowgli>=0.4.0 \
			x11/dbus-glib \
			x11/dbus \
			x11/gtk+2

MAKE_ENV =		LIBaudclient_VERSION=${LIBaudclient_VERSION}

USE_GROFF =		Yes
USE_GMAKE =		Yes

AUTOCONF_VERSION =	2.61

CONFIGURE_STYLE =	autoconf

.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS +=	--disable-sse2
.endif

NO_REGRESS =	Yes

.include <bsd.port.mk>
