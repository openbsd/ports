# $OpenBSD: Makefile,v 1.8 2014/04/28 12:43:10 bcallah Exp $

COMMENT = 	C++ library of cryptographic algorithms
CATEGORIES = 	devel security

HOMEPAGE = 	http://www.cryptopp.com/
MASTER_SITES = 	${HOMEPAGE}
DISTNAME = 	cryptopp562
PKGNAME = 	cryptopp-5.6.2

EXTRACT_SUFX = 	.zip
WRKDIST = 	${WRKDIR}

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# individual files are public domain
# compilation just has supplementary disclaimers (patents dreck)
PERMIT_PACKAGE_CDROM = 		Yes

WANTLIB +=	m pthread stdc++

SHARED_LIBS = 	cryptopp	1.0

USE_GMAKE = 	Yes
MAKE_FLAGS +=	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS} -Wno-deprecated \
			-Wno-sign-compare \
			-Wno-unknown-pragmas \
			-Wno-unused \
			-DCRYPTOPP_DISABLE_SSSE3 \
			-DCRYPTOPP_DISABLE_AESNI \
			-DNDEBUG -fPIC" \
		LDFLAGS="-lpthread" \
		PREFIX=${PREFIX} \
		LIBcryptopp_VERSION=${LIBcryptopp_VERSION}
MAKE_FILE = 	${WRKDIR}/GNUmakefile

TEST_FLAGS += WRKDIST=${WRKDIST}
TEST_TARGET = test

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/cryptopp
	${INSTALL_DATA} ${WRKDIR}/*.h ${PREFIX}/include/cryptopp
	${INSTALL_DATA} ${WRKDIR}/libcryptopp.{a,so.${LIBcryptopp_VERSION}} \
		${PREFIX}/lib

.include <bsd.port.mk>
