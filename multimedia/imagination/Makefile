# $OpenBSD: Makefile,v 1.1.1.1 2013/04/16 16:18:03 giovanni Exp $

SHARED_ONLY =	Yes

COMMENT =		lightweight and simple DVD slide show maker
DISTNAME =		imagination-3.0

CATEGORIES =	multimedia

HOMEPAGE =		http://imagination.sf.net

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender expat fontconfig freetype m pixman-1
WANTLIB += pthread pthread-stubs sndio xcb xcb-render xcb-shm
WANTLIB += FLAC gsm id3tag mad magic mp3lame ogg opencore-amrnb
WANTLIB += opencore-amrwb png sndfile sox twolame vorbis vorbisenc
WANTLIB += vorbisfile wavpack z
WANTLIB += ffi gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 intl pcre gdk-x11-2.0 gtk-x11-2.0
WANTLIB += pangocairo-1.0 atk-1.0 harfbuzz icuuc
WANTLIB += cairo graphite2 icudata icule pango-1.0 pangoft2-1.0

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=imagination/}

CONFIGURE_STYLE =	gnu
MODULES =		converters/libiconv
USE_LIBTOOL =	Yes
LIBTOOL_FLAGS =	--tag=disable-static
USE_GMAKE =		Yes

LIB_DEPENDS =	devel/pango \
				devel/harfbuzz \
				devel/atk \
				textproc/icu4c \
				x11/gtk+2
BUILD_DEPENDS =	audio/sox
RUN_DEPENDS =	${BUILD_DEPENDS} \
				devel/desktop-file-utils \
				x11/gtk+2,-guic

post-install:
	@rm -f ${PREFIX}/lib/imagination/*.la

.include <bsd.port.mk>
