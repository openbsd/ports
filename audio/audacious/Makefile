# $OpenBSD: Makefile,v 1.19 2010/10/24 21:00:29 ajacoutot Exp $

SHARED_ONLY = 	Yes

COMMENT = 	gtk+2 media player based on BMP and XMMS

DISTNAME = 	audacious-2.1
REVISION =	2

SHARED_LIBS = 	audclient	1.0

CATEGORIES = 	audio multimedia

HOMEPAGE = 	http://audacious-media-player.org/

# GPLv3
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = 	Yes
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP =	Yes

WANTLIB = 	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb z \
		samplerate mcs mowgli dbus-glib-1 dbus-1.>=6 \
		gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0 execinfo \
		xcb-render xcb-render-util

MASTER_SITES = 	http://distfiles.atheme.org/

EXTRACT_SUFX = 	.tgz

MODULES = 	devel/gettext

BUILD_DEPENDS = :libxml-*:textproc/libxml
RUN_DEPENDS = 	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS = 	::audio/libsamplerate \
		::devel/libexecinfo \
		:mcs->=0.7.0:devel/mcs \
		:mowgli->=0.4.0:devel/mowgli \
		::x11/dbus-glib \
		::x11/dbus \
		::x11/gtk+2

MAKE_ENV = 	LIBaudclient_VERSION=${LIBaudclient_VERSION}

USE_GROFF =	Yes
USE_GMAKE = 	Yes

AUTOCONF_VERSION =	2.61

CONFIGURE_STYLE = autoconf
CONFIGURE_ARGS = --enable-samplerate
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lexecinfo"

.if ${MACHINE_ARCH} !=  "amd64"
CONFIGURE_ARGS +=	--disable-sse2
.endif

NO_REGRESS =	Yes

.include <bsd.port.mk>
