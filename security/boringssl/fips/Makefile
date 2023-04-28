NOT_FOR_ARCHS =		${BE_ARCHS}

COMMENT =	fork of OpenSSL that is designed to meet Google's needs

GH_ACCOUNT =	google
GH_PROJECT =	boringssl
GH_COMMIT =	0c6f40132b828e92ba365c6b7680e32820c63fa7
DISTNAME = 	boringssl-fips-20220613

CATEGORIES =	security

MAINTAINER =	Bob Beck <beck@openbsd.org>, \
		Theo Buehler <tb@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# C++14
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake
CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX=${PREFIX}/eboringssl-fips

# XXX picked up for tests, needs more love
BUILD_DEPENDS =		lang/go

PORTHOME =		${WRKSRC}

.include <bsd.port.mk>
