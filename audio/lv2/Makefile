# $OpenBSD: Makefile,v 1.2 2021/11/02 00:00:13 sthen Exp $

COMMENT=	open standard for audio plugins, used by hundreds of plugins

DISTNAME=	lv2-1.18.2
REVISION=	0

CATEGORIES=	audio

HOMEPAGE=	https://lv2plug.in

MAINTAINER=     Dimitri Karamazov <deserter666@danwin1210.me>

# ISC
PERMIT_PACKAGE= Yes

WANTLIB += FLAC X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xft Xi Xinerama Xrandr Xrender atk-1.0 cairo
WANTLIB += expat ffi fontconfig freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-x11-2.0 harfbuzz harfbuzz-gobject intl m ogg opus
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread sndfile tiff vorbis vorbisenc xcb xcb-render
WANTLIB += xcb-shm z

MODULES +=	lang/python

MASTER_SITES=	https://lv2plug.in/spec/

EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	audio/libsndfile \
		x11/gtk+2

MODULES=	lang/python

MODPY_ADJ_FILES=lv2specgen/lv2specgen.py

# requires library gcov
NO_TEST=	Yes

do-configure:
	cd ${WRKSRC} && PYTHON=${MODPY_BIN} CXX='${CXX}' CC='${CC}'  \
	   ${MODPY_BIN} ./waf configure \
		--prefix=${PREFIX} \
		--destdir=${DESTDIR} \
		--mandir=${PREFIX}/man \
		--copy-headers \
		--debug

do-build:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf -v

do-install:
	cd ${WRKSRC} && ${MODPY_BIN} ./waf install

.include <bsd.port.mk>
