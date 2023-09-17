COMMENT =	play back various video game streamed audio formats

PKGNAME =	vgmstream-$V

V =		1866

DIST_TUPLE =	github vgmstream vgmstream r$V .

CATEGORIES =	audio

HOMEPAGE =	https://vgmstream.org/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += ao c m

LIB_DEPENDS =		audio/libao

MAKE_FLAGS =		CC="${CC}" \
			STRIP=@true \
			LIBAO_INC="-I${LOCALBASE}/include" \
			LIBAO_LIB="-L${LOCALBASE}/lib -lao"

USE_GMAKE =		Yes

DEBUG_PACKAGES = ${BUILD_PACKAGES}

NO_TEST =		Yes

ALL_TARGET =		vgmstream-cli vgmstream123

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/cli/vgmstream-cli ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/cli/vgmstream123 ${PREFIX}/bin

.include <bsd.port.mk>
