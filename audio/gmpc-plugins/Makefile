# $OpenBSD: Makefile,v 1.18 2011/05/16 08:24:31 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT-main =		bundle of plugins for gmpc
COMMENT-wikipedia =	wikipedia plugin for gmpc

VERSION =	0.20.0
DISTNAME =	gmpc-plugins-${VERSION}
PKGNAME-main =		${DISTNAME}
REVISION-main =		2
PKGNAME-wikipedia =	gmpc-wikipedia-${VERSION}
REVISION-wikipedia =	4

CATEGORIES =	audio

MAINTAINER =	Landry Breuil <gaston@gcu.info>

HOMEPAGE =	http://gmpc.wikia.com/wiki/Gnome_Music_Player_Client
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=musicpd/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES =	-main

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "i386" || \
    ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "hppa" || ${MACHINE_ARCH} == "sparc64"
# XXX give it a chance to build on systems where webkit is not built
MULTI_PACKAGES+=	-wikipedia
.else
CONFIGURE_ARGS+=	--disable-wikipedia
.endif

MODULES =	devel/gettext \
		textproc/intltool

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			audio/taglib>=1.5 \
			x11/dbus-glib \
			net/avahi
WANTLIB-main = ${WANTLIB} dbus-1 glade-2.0 tag tag_c dbus-glib-1
WANTLIB-main += avahi-client avahi-common avahi-glib

LIB_DEPENDS-wikipedia =	${LIB_DEPENDS} \
			www/webkit>=1.4.0v0
WANTLIB-wikipedia =	${WANTLIB} \
			ICE SM Xt enchant gailutil gstapp-0.10 gstbase-0.10 \
			ICE SM Xt enchant gailutil gstapp-0.10 gstbase-0.10 \
			gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 \
			icudata icui18n icuuc jpeg soup-2.4 webkitgtk-1.0 xslt

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m mpd pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs sqlite3 stdc++ xcb
WANTLIB += xcb-render xcb-shm xml2 z

RUN_DEPENDS =	audio/gmpc>=${VERSION} \
		audio/vorbis-tools

BUILD_DEPENDS =	${RUN_DEPENDS} \
		x11/gob2
USE_LIBTOOL =	Yes
USE_GMAKE =	Yes

CONFIGURE_STYLE =gnu
CONFIGURE_ARGS+=--disable-mserver \
		--disable-mmkeys \
		--disable-libnotify \
		--disable-lirc

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
