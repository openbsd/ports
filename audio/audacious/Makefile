# $OpenBSD: Makefile,v 1.14 2009/09/15 21:49:01 fgsch Exp $

SHARED_ONLY = 	Yes

COMMENT = 	gtk+2 media player based on BMP and XMMS

DISTNAME = 	audacious-2.1
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
		fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb z

MASTER_SITES = 	http://distfiles.atheme.org/

EXTRACT_SUFX = 	.tgz

MODULES = 	devel/gettext

BUILD_DEPENDS = :libxml-*:textproc/libxml
RUN_DEPENDS = 	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS = 	samplerate::audio/libsamplerate \
		mcs:mcs->=0.7.0:devel/mcs \
		mowgli:mowgli->=0.4.0:devel/mowgli \
		dbus-glib-1::x11/dbus-glib \
		dbus-1.>=6::x11/dbus \
		gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2 \
		execinfo::devel/libexecinfo

MAKE_ENV = 	LIBaudclient_VERSION=${LIBaudclient_VERSION}

USE_X11 = 	Yes
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
