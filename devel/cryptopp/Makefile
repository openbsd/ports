# $OpenBSD: Makefile,v 1.1.1.1 2008/08/26 14:57:58 espie Exp $

COMMENT = 	C++ library of cryptographic algorithms
CATEGORIES = 	devel security

HOMEPAGE = 	http://www.cryptopp.com/
MASTER_SITES = 	${HOMEPAGE}
DISTNAME = 	cryptopp552
PKGNAME = 	cryptopp-5.5.2

EXTRACT_SUFX = 	.zip
WRKDIST = 	${WRKDIR}


# individual files are public domain
# compilation just has supplementary disclaimers (patents dreck)
PERMIT_PACKAGE_CDROM = 		Yes
PERMIT_DISTFILES_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 		Yes
PERMIT_DISTFILES_FTP = 		Yes

SHARED_LIBS = 	cryptopp	0.0

USE_GMAKE = 	Yes
MAKE_FLAGS = 	CXXFLAGS="-DNDEBUG -pthread ${CXXFLAGS}" PREFIX=${PREFIX} \
		LIBcryptopp_VERSION=${LIBcryptopp_VERSION}
MAKE_FILE = 	${WRKDIR}/GNUmakefile
NO_REGRESS = 	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/cryptopp
	${INSTALL_DATA} ${WRKDIR}/*.h ${PREFIX}/include/cryptopp
	${INSTALL_DATA} ${WRKDIR}/libcryptopp.{a,so.${LIBcryptopp_VERSION}} \
		${PREFIX}/lib

.include <bsd.port.mk>
