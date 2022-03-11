COMMENT =	C++ library of cryptographic algorithms
CATEGORIES =	devel security

HOMEPAGE =	https://cryptopp.com/
MASTER_SITES =	${HOMEPAGE}

V =		8.2.0
REVISION =	0
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

COMPILER =	base-clang ports-gcc

SHARED_LIBS =	cryptopp	5.0

CXXFLAGS +=	-fPIC -Wno-unused -DNDEBUG

USE_GMAKE =	Yes
MAKE_FLAGS +=	CC="${CC}" \
		CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS}" \
		LDFLAGS="-lpthread" \
		PREFIX=${PREFIX} \
		HAS_SOLIB_VERSION=1 \
		SOLIB_VERSION_SUFFIX=.${LIBcryptopp_VERSION}

MAKE_FILE =	${WRKDIR}/GNUmakefile

TEST_FLAGS +=	WRKDIST=${WRKDIST}

ALL_TARGET =	all libcryptopp.pc

.include <bsd.port.arch.mk>
.if ${MACHINE_ARCH:Mpowerpc*}
# https://marc.info/?l=openbsd-ports&m=160575195204466&w=2
CXXFLAGS +=	-DCRYPTOPP_DISABLE_ASM
.elif ${PROPERTIES:Mclang}
CXXFLAGS +=	-DCRYPTOPP_DISABLE_MIXED_ASM
.endif

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/cryptopp
	${INSTALL_DATA} ${WRKSRC}/*.h ${PREFIX}/include/cryptopp
	${INSTALL_DATA} ${WRKSRC}/libcryptopp.{a,so.${LIBcryptopp_VERSION}} \
		${PREFIX}/lib
	${SUBST_DATA} ${WRKSRC}/libcryptopp.pc \
		${PREFIX}/lib/pkgconfig/libcryptopp.pc

.include <bsd.port.mk>
