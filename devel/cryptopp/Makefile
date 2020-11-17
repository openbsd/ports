# $OpenBSD: Makefile,v 1.26 2020/11/17 20:53:11 sthen Exp $

COMMENT =	C++ library of cryptographic algorithms
CATEGORIES =	devel security

HOMEPAGE =	https://www.cryptopp.com/
MASTER_SITES =	${HOMEPAGE}

V =		5.6.5
DISTNAME =	cryptopp${V:S/.//g}
PKGNAME =	cryptopp-$V

EXTRACT_SUFX =	.zip
UNZIP =		unzip -a
WRKDIST =	${WRKDIR}
FIX_EXTRACT_PERMISSIONS = Yes

# individual files are public domain
# compilation is licensed under the Boost Software License 1.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	m pthread ${COMPILER_LIBCXX}

COMPILER =	base-clang ports-gcc base-gcc

SHARED_LIBS =	cryptopp	4.0

USE_GMAKE =	Yes
MAKE_FLAGS +=	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS} -Wno-unused \
			-DCRYPTOPP_DISABLE_SSSE3 \
			-DCRYPTOPP_DISABLE_AESNI \
			-DCRYPTOPP_NO_UNALIGNED_DATA_ACCESS \
			-DNDEBUG -fPIC" \
		LDFLAGS="-lpthread" \
		PREFIX=${PREFIX} \
		LIBcryptopp_VERSION=${LIBcryptopp_VERSION}

MAKE_FILE =	${WRKDIR}/GNUmakefile

TEST_FLAGS += WRKDIST=${WRKDIST}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/cryptopp
	${INSTALL_DATA} ${WRKDIR}/*.h ${PREFIX}/include/cryptopp
	${INSTALL_DATA} ${WRKDIR}/libcryptopp.{a,so.${LIBcryptopp_VERSION}} \
		${PREFIX}/lib
	${SUBST_DATA} ${FILESDIR}/cryptopp.pc \
		${PREFIX}/lib/pkgconfig/cryptopp.pc

.include <bsd.port.mk>
