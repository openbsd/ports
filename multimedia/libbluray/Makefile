COMMENT =		library supporting Blu-ray playback

V =			1.3.4
DISTNAME =		libbluray-${V}
CATEGORIES =		multimedia

HOMEPAGE =		https://www.videolan.org/developers/libbluray.html

SITES =		https://download.videolan.org/pub/videolan/libbluray/${V}/
EXTRACT_SUFX =		.tar.bz2

# LGPL v2.1
PERMIT_PACKAGE =	Yes

WANTLIB +=		c expat fontconfig freetype iconv lzma m pthread
WANTLIB +=		udfread xml2 z

SHARED_LIBS +=		bluray		3.2	# 11.0

LIB_DEPENDS =		converters/libiconv \
			multimedia/libudfread \
			textproc/libxml
BUILD_DEPENDS =		devel/bison

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
YACC =			${LOCALBASE}/bin/bison -y
CONFIGURE_ARGS +=	--disable-bdjava-jar \
			--disable-doxygen-doc \
			--disable-optimizations

.include <bsd.port.mk>
