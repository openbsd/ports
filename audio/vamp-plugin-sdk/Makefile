# $OpenBSD: Makefile,v 1.22 2020/03/12 14:53:00 rapha Exp $

COMMENT =		audio plugin API

VERSION =		2.9.0
DISTNAME =		vamp-plugin-sdk-${VERSION}
CATEGORIES =		audio

SHARED_LIBS +=		vamp-sdk	1.1
SHARED_LIBS +=		vamp-hostsdk	2.0

HOMEPAGE =		https://www.vamp-plugins.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c m ${COMPILER_LIBCXX}

# C++11
COMPILER =		base-clang ports-gcc

MASTER_SITES =		https://code.soundsoftware.ac.uk/attachments/download/2588/

MAKE_ENV +=		LIBvamp-sdk_VERSION="${LIBvamp-sdk_VERSION}" \
			LIBvamp-hostsdk_VERSION="${LIBvamp-hostsdk_VERSION}"

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

TEST_TARGET =		test
TEST_DEPENDS =		audio/libsndfile

.include <bsd.port.mk>
