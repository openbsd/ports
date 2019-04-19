# $OpenBSD: Makefile,v 1.3 2019/04/19 13:58:47 jca Exp $

COMMENT =	multilingual text processing library

DISTNAME =	m17n-lib-${M17N_V}
REVISION =	0

SHARED_LIBS +=  m17n-core            0.0      # 4.2
SHARED_LIBS +=  m17n                 0.0      # 4.2
SHARED_LIBS +=  m17n-flt             0.0      # 4.2
SHARED_LIBS +=  m17n-gui             0.0      # 4.2

CATEGORIES =	misc

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xft Xmu Xpm Xrender Xt
WANTLIB += anthy anthydic c expat fontconfig freetype fribidi
WANTLIB += gd iconv intl jpeg lzma m otf png16 pthread tiff webp
WANTLIB += xcb xml2 z

LIB_DEPENDS =	devel/gettext \
		devel/libotf \
		devel/fribidi \
		graphics/gd \
		inputmethods/anthy \
		textproc/libxml

BUILD_DEPENDS =	textproc/ispell \
		${RUN_DEPENDS}
RUN_DEPENDS =	misc/m17n/db=${M17N_V}

CONFIGURE_ENV =	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib ${LDFLAGS}"
LIBTOOL_FLAGS =	--tag=disable-static
SEPARATE_BUILD = Yes

.include <bsd.port.mk>
