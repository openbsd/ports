# $OpenBSD: Makefile,v 1.12 2019/07/12 20:43:39 sthen Exp $

COMMENT =	lightweight audio player with a simple interface
DISTNAME =	potamus-17
CATEGORIES =	audio x11
REVISION =	3

HOMEPAGE =	http://offog.org/code/potamus/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += FLAC X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender ao atk-1.0 audiofile avcodec
WANTLIB += avformat avutil c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 intl m mad modplug opusfile pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread samplerate vorbisfile
WANTLIB += xml2 z

MASTER_SITES =	http://offog.org/files/

LIB_DEPENDS =	audio/libao \
		audio/libmad \
		audio/libmodplug \
		audio/libsamplerate \
		audio/opusfile \
		devel/libaudiofile \
		devel/libglade2 \
		graphics/ffmpeg \
		x11/gtk+2

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--disable-output-jack

.include <bsd.port.mk>
