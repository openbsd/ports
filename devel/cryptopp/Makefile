# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:02 espie Exp $

COMMENT = 	C++ library of cryptographic algorithms
CATEGORIES = 	devel security

HOMEPAGE = 	http://www.cryptopp.com/
MASTER_SITES = 	${HOMEPAGE}
DISTNAME = 	cryptopp561
PKGNAME = 	cryptopp-5.6.1
REVISION =	2

EXTRACT_SUFX = 	.zip
WRKDIST = 	${WRKDIR}

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# individual files are public domain
# compilation just has supplementary disclaimers (patents dreck)
PERMIT_PACKAGE_CDROM = 		Yes

WANTLIB +=	m pthread stdc++

SHARED_LIBS = 	cryptopp	1.0

USE_GMAKE = 	Yes
MAKE_FLAGS +=	CXXFLAGS="${CXXFLAGS} -Wno-deprecated \
			-Wno-sign-compare \
			-Wno-unknown-pragmas \
			-Wno-unused \
			-DCRYPTOPP_DISABLE_SSSE3 \
			-DCRYPTOPP_DISABLE_AESNI \
			-DNDEBUG -fPIC" \
		LDFLAGS="-pthread" \
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
