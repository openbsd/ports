# $OpenBSD: Makefile,v 1.9 2009/09/21 18:33:57 landry Exp $

SHARED_ONLY =	Yes

COMMENT-main =		bundle of plugins for gmpc
COMMENT-wikipedia =	wikipedia plugin for gmpc

VERSION =	0.19.0
DISTNAME =	gmpc-plugins-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-wikipedia =	gmpc-wikipedia-${VERSION}

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
    ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "amd64"
# XXX give it a chance to build on systems where webkit is not built
MULTI_PACKAGES+=	-wikipedia
.else
CONFIGURE_ARGS+=	--disable-wikipedia
.endif

MODULES =	devel/gettext

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			tag,tag_c:taglib->=1.5:audio/taglib \
			dbus-glib-1::x11/dbus-glib \
			avahi-client,avahi-common,avahi-glib::net/avahi
WANTLIB-main = ${WANTLIB} dbus-1 glade-2.0

LIB_DEPENDS-wikipedia =	${LIB_DEPENDS} \
			webkit-1.0::www/webkit
WANTLIB-wikipedia =	${WANTLIB} ICE SM Xt enchant gcrypt gnutls gpg-error \
			icudata icui18n icuuc jpeg soup-2.4 tasn1 xslt \
			gailutil

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo
WANTLIB += expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m mpd pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += sqlite3 stdc++ xml2 z
WANTLIB += pthread-stubs xcb

RUN_DEPENDS =	:gmpc->=${VERSION}:audio/gmpc \
		::audio/vorbis-tools

BUILD_DEPENDS =	${RUN_DEPENDS} \
		::x11/gob2
USE_LIBTOOL =	Yes
USE_X11 =	Yes
USE_GMAKE =	Yes

CONFIGURE_STYLE =gnu
CONFIGURE_ARGS+=--disable-mserver \
		--disable-libnotify \
		--disable-lirc

CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
