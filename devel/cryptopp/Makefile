# $OpenBSD: Makefile,v 1.2 2011/06/24 07:55:17 dcoppa Exp $

COMMENT = 	C++ library of cryptographic algorithms
CATEGORIES = 	devel security

HOMEPAGE = 	http://www.cryptopp.com/
MASTER_SITES = 	${HOMEPAGE}
DISTNAME = 	cryptopp561
PKGNAME = 	cryptopp-5.6.1

EXTRACT_SUFX = 	.zip
WRKDIST = 	${WRKDIR}


# individual files are public domain
# compilation just has supplementary disclaimers (patents dreck)
PERMIT_PACKAGE_CDROM = 		Yes
PERMIT_DISTFILES_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 		Yes
PERMIT_DISTFILES_FTP = 		Yes

SHARED_LIBS = 	cryptopp	1.0

WANTLIB +=	m stdc++

USE_GMAKE = 	Yes
MAKE_FLAGS +=	CXXFLAGS="${CXXFLAGS} -Wno-deprecated -Wno-sign-compare \
			  -Wno-unused -DCRYPTOPP_DISABLE_SSSE3 \
			  -DCRYPTOPP_DISABLE_AESNI -DNDEBUG -fPIC" \
		LDFLAGS="-pthread" \
		PREFIX=${PREFIX} \
		LIBcryptopp_VERSION=${LIBcryptopp_VERSION}
MAKE_FILE = 	${WRKDIR}/GNUmakefile

REGRESS_FLAGS += WRKDIST=${WRKDIST}
REGRESS_TARGET = test

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/cryptopp
	${INSTALL_DATA} ${WRKDIR}/*.h ${PREFIX}/include/cryptopp
	${INSTALL_DATA} ${WRKDIR}/libcryptopp.{a,so.${LIBcryptopp_VERSION}} \
		${PREFIX}/lib

.include <bsd.port.mk>
