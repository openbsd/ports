# $OpenBSD: Makefile,v 1.23 2020/03/20 16:44:25 naddy Exp $

COMMENT =		video editor and a VJ tool

V =			1.0.10
DISTNAME =		LiVES-${V}
PKGNAME =		${DISTNAME:L}
REVISION =		10

SHARED_LIBS +=		weed		0.0 # 0.2
SHARED_LIBS +=		weed_slice	0.0 # 0.2

CATEGORIES =		multimedia

HOMEPAGE =		http://lives.sourceforge.net
MASTER_SITES =		http://www.xs4all.nl/%7Esalsaman/lives/current/

# GPL v3+
PERMIT_PACKAGE =	Yes

WANTLIB += SDL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo dv expat ffi fontconfig
WANTLIB += freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz iconv intl m mjpegutils ogg oil-0.3 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread sndio
WANTLIB += theora usbhid xcb xcb-render xcb-shm z

RUN_DEPENDS =		graphics/ImageMagick \
			x11/mplayer \
			audio/sox \
			sysutils/cdrtools \
			audio/vorbis-tools \
			multimedia/transcode \
			devel/desktop-file-utils
BUILD_DEPENDS =		audio/vorbis-tools \
			devel/gettext,-tools
LIB_DEPENDS =		multimedia/libtheora \
			devel/sdl \
			multimedia/libdv \
			x11/gtk+2 \
			audio/libogg \
			devel/liboil \
			multimedia/mjpegtools

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-jack \
			--disable-frei0r \
			--disable-libvisual \
			--disable-static

WRKDIST =		${WRKDIR}/${DISTNAME:L}

pre-configure:
	find ${WRKSRC} -name Makefile.in -exec \
		perl -pi -e 's/ -O3/ ${CFLAGS} -std=gnu89/g' {} +

pre-install:
	@cd ${WRKDIST}/po && ${MAKE_PROGRAM} update-po

post-install:
	mv ${WRKINST}/${TRUEPREFIX}/share/doc/lives-${V} \
	    ${WRKINST}/${TRUEPREFIX}/share/doc/lives/
	find ${WRKINST}/${TRUEPREFIX}/lib/lives/plugins -name '*.la' -delete

.include <bsd.port.mk>
