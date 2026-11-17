COMMENT =		library supporting Blu-ray playback

V =			1.5.0
DISTNAME =		libbluray-${V}
CATEGORIES =		multimedia

HOMEPAGE =		https://www.videolan.org/developers/libbluray.html

SITES =			https://download.videolan.org/pub/videolan/libbluray/${V}/
EXTRACT_SUFX =		.tar.xz

# LGPL v2.1
PERMIT_PACKAGE =	Yes

WANTLIB +=		c fontconfig freetype pthread udfread xml2

SHARED_LIBS +=		bluray		3.3

MODULES =		devel/meson

LIB_DEPENDS =		multimedia/libudfread>=1.2.0 \
			textproc/libxml

CONFIGURE_ARGS +=	-Dbdj_jar=disabled

NO_TEST =		Yes

.include <bsd.port.mk>
