COMMENT =	crypto and TLS for C++11

VERSION =	2.19.5
DISTNAME =	Botan-${VERSION}
PKGNAME =	botan2-${VERSION}
REVISION =	2

SHARED_LIBS =	botan-2		19.1

CATEGORIES =	security

HOMEPAGE =	https://botan.randombit.net/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# BSD 2-Clause
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} bz2 c lzma m z

SITES =			${HOMEPAGE}releases/

SUPDISTFILES =		${DISTFILES}.asc
EXTRACT_SUFX =		.tar.xz

MODULES =		lang/python
MODPY_RUNDEP =		No

# C++11
COMPILER =		base-clang ports-gcc
BUILD_DEPENDS =		textproc/py-docutils
LIB_DEPENDS =		archivers/bzip2 \
			archivers/xz

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${WRKSRC}/configure.py
CONFIGURE_ARGS =	--with-build-dir=${WRKBUILD} \
			--prefix=${PREFIX} \
			--distribution-info="`uname -sr`" \
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

SUBST_VARS =		CXX CXXFLAGS LIBbotan-2_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/build-data/os/openbsd.txt
	${SUBST_CMD} ${WRKSRC}/src/tests/main.cpp
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

do-test:
	LD_LIBRARY_PATH=${WRKBUILD} ${WRKBUILD}/botan-test \
	    --data-dir=${WRKSRC}/src/tests/data

post-install:
	${MODPY_COMPILEALL} \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/botan2.py
	cd ${PREFIX}/share/doc && mv botan-${VERSION} botan-2
	${INSTALL_PROGRAM} ${WRKBUILD}/botan-test ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/botan-2
	cd ${WRKSRC}/src/tests && find data \
	    -type d -exec ${INSTALL_DATA_DIR} ${PREFIX}/share/botan-2/{} \; -o \
	    -type f -exec ${INSTALL_DATA} {} ${PREFIX}/share/botan-2/{} \;

.include <bsd.port.mk>
# If we don't explicitly configure for clang, it passes as a good enough gcc,
# and then we get lots of warnings for unknown warning options...
.if ${CHOSEN_COMPILER} == "base-clang"
CONFIGURE_ARGS +=	--cc=clang
.else
CONFIGURE_ARGS +=	--cc=gcc
.endif
