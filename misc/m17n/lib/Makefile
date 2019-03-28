# $OpenBSD: Makefile,v 1.2 2019/03/28 02:03:27 jca Exp $

COMMENT =	multilingual text processing library

DISTNAME =	m17n-lib-${M17N_V}

SHARED_LIBS +=  m17n-core            0.0      # 4.2
SHARED_LIBS +=  m17n                 0.0      # 4.2
SHARED_LIBS +=  m17n-flt             0.0      # 4.2
SHARED_LIBS +=  m17n-gui             0.0      # 4.2

CATEGORIES =	misc

WANTLIB += ICE SM X11 Xft Xrender Xt anthy anthydic c expat fontconfig
WANTLIB += freetype fribidi gd iconv jpeg lzma m otf png16 pthread
WANTLIB += tiff webp xcb xml2 z

LIB_DEPENDS =	devel/libotf \
		devel/fribidi \
		graphics/gd \
		inputmethods/anthy \
		textproc/libxml

BUILD_DEPENDS =	textproc/ispell \
		${RUN_DEPENDS}
RUN_DEPENDS =	misc/m17n/db=${M17N_V}

CONFIGURE_ENV =	LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"
LIBTOOL_FLAGS =	--tag=disable-static
SEPARATE_BUILD = Yes

.include <bsd.port.mk>
