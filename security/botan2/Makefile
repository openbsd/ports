# $OpenBSD: Makefile,v 1.5 2017/05/13 09:49:50 espie Exp $

COMMENT =	crypto and TLS for C++11

VERSION =	2.1.0
DISTNAME =	Botan-${VERSION}
PKGNAME =	botan2-${VERSION}

SHARED_LIBS =	botan-2		1.0

CATEGORIES =	security

HOMEPAGE =	https://botan.randombit.net/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# BSD 2-Clause
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		bz2 c m lzma pthread z

MASTER_SITES =		${HOMEPAGE}releases/

SUPDISTFILES =		${DISTFILES}.asc
EXTRACT_SUFX =		.tgz

MODULES =		lang/python
MODPY_RUNDEP =		No

WANT_CXX =		base gcc
LIB_DEPENDS =		archivers/bzip2 \
			archivers/xz

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${WRKSRC}/configure.py
CONFIGURE_ARGS =	--with-build-dir=${WRKBUILD} \
			--prefix=${PREFIX} \
			--destdir=${DESTDIR}${PREFIX} \
			--distribution-info="`uname -sr`" \
			--with-bzip2 \
			--with-lzma \
			--with-zlib \
			--without-sphinx

.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
PKG_ARGS =		-Dx86=1
.else
PKG_ARGS =		-Dx86=0
.endif

SUBST_VARS =		CXX CXXFLAGS LIBbotan-2_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/build-data/cc/gcc.txt
	${SUBST_CMD} ${WRKSRC}/src/build-data/os/openbsd.txt
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

do-test:
	cd ${WRKSRC} && LD_LIBRARY_PATH=${WRKBUILD} ${WRKBUILD}/botan-test

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/botan2.py
	cd ${PREFIX}/share/doc && mv botan-${VERSION} botan-2

.include <bsd.port.mk>
# clang does not have /usr/local in its path, but more importantly,
# if we don't explicitly configure for it, it passes as a good enough gcc,
# and then we get lots of warnings for unknown warning options...
.if ${PROPERTIES:Mclang}
CONFIGURE_ARGS += 	--with-external-includedir=${LOCALBASE}/include \
			--with-external-libdir=${LOCALBASE}/lib \
			--cc=clang
.endif
