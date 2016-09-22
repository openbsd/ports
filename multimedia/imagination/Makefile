# $OpenBSD: Makefile,v 1.12 2016/09/22 21:30:17 sthen Exp $

COMMENT =		lightweight and simple DVD slide show maker
DISTNAME =		imagination-3.0
REVISION =		5

CATEGORIES =		multimedia

HOMEPAGE =		http://imagination.sf.net

MAINTAINER =		Giovanni Bechis <giovanni@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += FLAC X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gsm gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv id3tag intl m mad mp3lame ogg opencore-amrnb
WANTLIB += opencore-amrwb opus opusfile pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sndfile sndio sox twolame vorbis vorbisenc vorbisfile
WANTLIB += wavpack xcb xcb-render xcb-shm z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=imagination/}

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--localedir=${PREFIX}/share/locale
MODULES =		textproc/intltool
LIBTOOL_FLAGS =		--tag=disable-static
USE_GMAKE =		Yes

LIB_DEPENDS =	audio/sox \
		devel/gettext \
		x11/gtk+2

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

post-install:
	rm ${PREFIX}/lib/imagination/*.la

.include <bsd.port.mk>
