COMMENT =	retro computer image library

DISTNAME =	recoil-6.4.0

CATEGORIES =	graphics

HOMEPAGE =	https://recoil.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += c png z

SITES =		${SITE_SOURCEFORGE:=recoil/}

BUILD_DEPENDS =	textproc/libxslt
RUN_DEPENDS =	misc/shared-mime-info
LIB_DEPENDS =	graphics/png

MAKE_FLAGS =	BUILDING_PACKAGE=1 \
		CC="${CC}" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include \
			-L${LOCALBASE}/lib"
FAKE_FLAGS =	PREFIX="${DESTDIR}${PREFIX}"

USE_GMAKE =	Yes

DEBUG_PACKAGES = ${BUILD_PACKAGES}

NO_TEST =	Yes

.include <bsd.port.mk>
