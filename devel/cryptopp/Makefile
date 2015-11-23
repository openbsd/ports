# $OpenBSD: Makefile,v 1.11 2015/11/23 13:19:40 dcoppa Exp $

COMMENT = 	C++ library of cryptographic algorithms
CATEGORIES = 	devel security

HOMEPAGE = 	http://www.cryptopp.com/
MASTER_SITES = 	${HOMEPAGE}
DISTNAME = 	cryptopp563
PKGNAME = 	cryptopp-5.6.3

EXTRACT_SUFX = 	.zip
WRKDIST = 	${WRKDIR}

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# individual files are public domain
# compilation just has supplementary disclaimers (patents dreck)
PERMIT_PACKAGE_CDROM = 		Yes

WANTLIB +=	m pthread stdc++

SHARED_LIBS = 	cryptopp	2.0

USE_GMAKE = 	Yes
MAKE_FLAGS +=	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS} -Wno-unused \
			-DCRYPTOPP_DISABLE_SSSE3 \
			-DCRYPTOPP_DISABLE_AESNI \
			-DNDEBUG -fPIC" \
		LDFLAGS="-lpthread" \
		PREFIX=${PREFIX} \
		LIBcryptopp_VERSION=${LIBcryptopp_VERSION}

MAKE_FILE = 	${WRKDIR}/GNUmakefile

TEST_FLAGS += WRKDIST=${WRKDIST}

pre-patch:
	@cd ${WRKSRC}; perl -i -pe 's/\r$$//' `find . -type f`

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/cryptopp
	${INSTALL_DATA} ${WRKDIR}/*.h ${PREFIX}/include/cryptopp
	${INSTALL_DATA} ${WRKDIR}/libcryptopp.{a,so.${LIBcryptopp_VERSION}} \
		${PREFIX}/lib
	${SUBST_DATA} ${FILESDIR}/cryptopp.pc \
		${PREFIX}/lib/pkgconfig/cryptopp.pc

.include <bsd.port.mk>
