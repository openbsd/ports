# $OpenBSD: Makefile,v 1.20 2019/07/12 20:47:56 sthen Exp $

COMMENT =		lightweight and simple DVD slide show maker
DISTNAME =		imagination-3.0
REVISION =		12

CATEGORIES =		multimedia

HOMEPAGE =		http://imagination.sf.net

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += FLAC X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig freetype
WANTLIB += fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gsm gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv id3tag intl m mad mp3lame ogg opus opusfile
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread sndfile sndio sox twolame vorbis vorbisenc vorbisfile
WANTLIB += wavpack xcb xcb-render xcb-shm z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=imagination/}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--localedir=${PREFIX}/share/locale
MODULES =		textproc/intltool
LIBTOOL_FLAGS =		--tag=disable-static
USE_GMAKE =		Yes

LIB_DEPENDS =	audio/sox \
		devel/gettext,-runtime \
		x11/gtk+2

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

post-install:
	rm ${PREFIX}/lib/imagination/*.la

.include <bsd.port.mk>
