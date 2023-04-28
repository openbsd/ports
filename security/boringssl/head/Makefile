NOT_FOR_ARCHS =		${BE_ARCHS}

COMMENT =	fork of OpenSSL that is designed to meet Google's needs

GH_ACCOUNT =	google
GH_PROJECT =	boringssl
GH_COMMIT =	de2d610a341f5a4b8c222425890537cb84c91400
DISTNAME = 	boringssl-20230425

CATEGORIES =	security

MAINTAINER =	Bob Beck <beck@openbsd.org>, \
		Theo Buehler <tb@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# C++14
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake
CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX=${PREFIX}/eboringssl

# XXX picked up for tests, needs more love
BUILD_DEPENDS =		lang/go

PORTHOME =		${WRKSRC}

.include <bsd.port.mk>
