# $OpenBSD: Makefile,v 1.13 2014/03/09 22:47:50 brad Exp $

ONLY_FOR_ARCHS=	${GCC4_ARCHS}

COMMENT=	portable, easy to use, and efficient C++ crypto library

DISTNAME=	Botan-1.10.7
PKGNAME=	${DISTNAME:L}
CATEGORIES=	security
MASTER_SITES=	${HOMEPAGE}files/
EXTRACT_SUFX=	.tbz
REVISION=	0

SHARED_LIBS=	botan-1.10	0.1

HOMEPAGE=	http://botan.randombit.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	bz2 crypto gmp m pthread stdc++ z

MODULES=	lang/python
MODPY_RUNDEP=	No

LIB_DEPENDS=	archivers/bzip2 \
		devel/gmp
BUILD_DEPENDS=	devel/boost

MAKE_FLAGS=	CXX="${CXX}" LIB_OPT="${CXXFLAGS} -finline-functions" \
		CHECK_OPT="${CXXFLAGS}" LDFLAGS="-L${LOCALBASE}/lib" \
		LIBbotan_VERSION=${LIBbotan-1.10_VERSION}
FAKE_FLAGS=	LIBbotan_VERSION=${LIBbotan-1.10_VERSION}

CXXFLAGS+=	-I${LOCALBASE}/include

CONFIGURE_STYLE= simple
CONFIGURE_SCRIPT= ${MODPY_BIN} ./configure.py
CONFIGURE_ARGS= ${CONFIGURE_SHARED} \
		--cpu=${MACHINE_ARCH} \
		--prefix=${PREFIX} \
		--with-bzip2 \
		--with-gnump \
		--with-openssl \
		--with-zlib \
		--without-sphinx

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS+=--disable-asm
PKG_ARGS+=	-Damd64=1
.else
PKG_ARGS+=	-Damd64=0
.endif

do-test:
	@cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${ALL_TEST_FLAGS} \
	    check && env LD_LIBRARY_PATH=${WRKBUILD} ./check --test

post-install:
	find ${PREFIX}/share/doc/botan -perm 600 -exec chmod 644 {} +

.include <bsd.port.mk>
