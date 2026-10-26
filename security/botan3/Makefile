COMMENT =	crypto and TLS for C++20

DPB_PROPERTIES = parallel

VERSION =	3.13.0
REVISION =	0
DISTNAME =	Botan-${VERSION}
PKGNAME =	botan3-${VERSION}

SHARED_LIBS =	botan-3		0.0

CATEGORIES =	security

HOMEPAGE =	https://botan.randombit.net/

# BSD 2-Clause
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} bz2 c lzma m z

SITES =			${HOMEPAGE}releases/

SUPDISTFILES =		${DISTFILES}.asc
EXTRACT_SUFX =		.tar.xz

MODULES =		lang/python
MODPY_RUNDEP =		No

# C++20
COMPILER =		base-clang ports-gcc
BUILD_DEPENDS =		textproc/py-docutils
LIB_DEPENDS =		archivers/bzip2 \
			archivers/xz

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${WRKSRC}/configure.py
CONFIGURE_ARGS =	--with-build-dir=${WRKBUILD} \
			--prefix=${PREFIX} \
			--distribution-info="OpenBSD" \
			--disable-static-library \
			--mandir=${PREFIX}/man \
			--with-external-includedir=${LOCALBASE}/include \
			--with-external-libdir=${LOCALBASE}/lib \
			--with-bzip2 \
			--with-lzma \
			--with-zlib \
			--without-sphinx

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
PKG_ARGS =		-Dx86=1
.else
PKG_ARGS =		-Dx86=0
.endif

SUBST_VARS =		CXX CXXFLAGS LIBbotan-3_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/build-data/os/openbsd.txt

do-test:
	LD_LIBRARY_PATH=${WRKBUILD} ${WRKBUILD}/botan-test \
	    --data-dir=${WRKSRC}/src/tests/data

post-install:
	mv ${PREFIX}/bin/botan ${PREFIX}/bin/botan3
	${MODPY_COMPILEALL} \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/botan3.py
	cd ${PREFIX}/share/doc && mv botan-${VERSION} botan-3

.include <bsd.port.mk>
