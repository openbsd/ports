# $OpenBSD: Makefile,v 1.1.1.1 2017/03/13 15:00:39 bluhm Exp $

COMMENT =	crypto and TLS for C++11

VERSION =	2.0.1
DISTNAME =	Botan-${VERSION}
PKGNAME =	botan2-${VERSION}

SHARED_LIBS =	botan-2		0.0

CATEGORIES =	security

HOMEPAGE =	https://botan.randombit.net/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# BSD 2-Clause
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		bz2 c m lzma pthread z

MASTER_SITES =		https://botan.randombit.net/releases/

SUPDISTFILES =		${DISTFILES}.asc
EXTRACT_SUFX =		.tgz

MODULES =		lang/python \
			gcc4
MODPY_RUNDEP =		No
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*
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
			--with-zlib \
			--with-lzma \
			--without-sphinx

SUBST_VARS =		CXX CXXFLAGS

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/build-data/cc/gcc.txt
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

do-test:
	cd ${WRKSRC} && LD_LIBRARY_PATH=${WRKBUILD} ${WRKBUILD}/botan-test

post-install:
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/botan.py

.include <bsd.port.mk>
