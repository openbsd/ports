# $OpenBSD: Makefile,v 1.11 2015/05/22 11:31:11 ajacoutot Exp $

COMMENT =		audio plugin API

DISTNAME =		vamp-plugin-sdk-2.0
REVISION =		2
CATEGORIES =		audio

SHARED_LIBS +=		vamp-sdk	1.0
SHARED_LIBS +=		vamp-hostsdk	1.0

HOMEPAGE =		http://www.vamp-plugins.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m stdc++

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

.include <bsd.port.mk>
