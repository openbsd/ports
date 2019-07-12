# $OpenBSD: Makefile,v 1.31 2019/07/12 20:49:00 sthen Exp $

COMMENT =	portable, easy to use, and efficient C++ crypto library

PORTROACH =	limit:^1\.10\.
VERSION =	1.10.17
DISTNAME =	Botan-${VERSION}
PKGNAME =	botan-${VERSION}
REVISION =	2

SHARED_LIBS =	botan-1.10	1.1

CATEGORIES =	security

HOMEPAGE =	https://botan.randombit.net/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# BSD 2-Clause
PERMIT_PACKAGE =	Yes

WANTLIB =		bz2 crypto gmp m pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc

MASTER_SITES =		${HOMEPAGE}releases/

SUPDISTFILES =		${DISTFILES}.asc
EXTRACT_SUFX =		.tgz

MODULES =		lang/python
MODPY_RUNDEP =		No
LIB_DEPENDS =		archivers/bzip2 \
			devel/gmp

CXXFLAGS +=		-std=c++11 -Wno-c++11-narrowing -I${LOCALBASE}/include
MAKE_FLAGS =		CXX="${CXX}" LIB_OPT="${CXXFLAGS} -finline-functions" \
			CHECK_OPT="${CXXFLAGS}" LDFLAGS="-L${LOCALBASE}/lib" \
			LIBbotan_VERSION=${LIBbotan-1.10_VERSION}
FAKE_FLAGS =		LIBbotan_VERSION=${LIBbotan-1.10_VERSION}

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${WRKSRC}/configure.py
CONFIGURE_ARGS =	--cpu=${MACHINE_ARCH} \
			--prefix=${PREFIX} \
			--with-bzip2 \
			--with-gnump \
			--with-openssl \
			--with-tr1-implementation=system \
			--with-zlib \
			--without-sphinx

# The sha1 i386 assembler implementation uses esp as regular register.
# This does not work well with the opportunistic stack-register protection,
# the process may be aborted.  Fall back to C implementation.
CONFIGURE_ARGS +=	--disable-asm

.if ${MACHINE_ARCH} == "amd64"
PKG_ARGS +=		-Damd64=1
.else
PKG_ARGS +=		-Damd64=0
.endif

pre-configure:
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python

do-test:
	cd ${WRKBUILD} && \
	    ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${ALL_TEST_FLAGS} check
	cd ${WRKSRC} && LD_LIBRARY_PATH=${WRKBUILD} ${WRKBUILD}/check --test

.include <bsd.port.mk>
