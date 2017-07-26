# $OpenBSD: Makefile,v 1.18 2017/07/26 22:45:16 sthen Exp $

COMMENT =		audio plugin API

VERSION =		2.2.1
DISTNAME =		vamp-plugin-sdk-${VERSION}
REVISION =		3
CATEGORIES =		audio

SHARED_LIBS +=		vamp-sdk	1.0
SHARED_LIBS +=		vamp-hostsdk	1.0

HOMEPAGE =		http://www.vamp-plugins.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vamp/}

MAKE_ENV +=		CXX=${CXX} \
			CXXFLAGS="${CXXFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBvamp-sdk_VERSION="${LIBvamp-sdk_VERSION}" \
			LIBvamp-hostsdk_VERSION="${LIBvamp-hostsdk_VERSION}"
FAKE_FLAGS =		PREFIX="${TRUEPREFIX}"

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		SNDFILE_CFLAGS="-I${LOCALBASE}/include" \
			SNDFILE_LIBS="-L${LOCALBASE}/lib -lsndfile"

TEST_TARGET =		test
TEST_DEPENDS =		audio/libsndfile

WRKDIST =		${WRKDIR}/vamp-plugin-sdk-v${VERSION}

.include <bsd.port.mk>
