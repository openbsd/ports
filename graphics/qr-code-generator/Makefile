# $OpenBSD: Makefile,v 1.3 2022/01/06 00:07:44 kn Exp $

COMMENT =		QR Code generator library
GH_ACCOUNT =		nayuki
GH_PROJECT =		QR-Code-generator
GH_TAGNAME =		v1.7.0
PKGNAME =		${DISTNAME:L}
CATEGORIES =		graphics
REVISION =		0

# upstream has no shared library versions
SHARED_LIBS +=		qrcodegen	0.0
SHARED_LIBS +=		qrcodegencpp	0.0

HOMEPAGE =		https://www.nayuki.io/page/qr-code-generator-library

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} m

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

COMPILER =		base-clang ports-gcc

SEPARATE_BUILD =	Yes

SONAME_C =		libqrcodegen.so.${LIBqrcodegen_VERSION}
SONAME_CPP =		libqrcodegencpp.so.${LIBqrcodegen_VERSION}

do-build:
	cd ${WRKSRC}/c   && PATH=${PORTPATH} ${CC}  ${CFLAGS}   -shared \
	    -Wl,-soname,${SONAME_C}   -o ${WRKBUILD}/${SONAME_C}   qrcodegen.c
	cd ${WRKSRC}/cpp && PATH=${PORTPATH} ${CXX} ${CXXFLAGS} -shared -fPIC \
	    -Wl,-soname,${SONAME_CPP} -o ${WRKBUILD}/${SONAME_CPP} qrcodegen.cpp

do-install:
	${INSTALL_DATA} ${WRKSRC}/{c/*.h,cpp/*.hpp} ${PREFIX}/include/
	${INSTALL_DATA} ${WRKBUILD}/*.so* ${PREFIX}/lib/

do-test:
	cd ${WRKSRC}/c && PATH=${PORTPATH} ${CC} ${CFLAGS} -DQRCODEGEN_TEST \
	    qrcodegen{,-test}.c -o ${WRKBUILD}/qrcodegen-test
	${WRKBUILD}/qrcodegen-test

.include <bsd.port.mk>
