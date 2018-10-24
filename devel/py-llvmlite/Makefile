# $OpenBSD: Makefile,v 1.2 2018/10/24 14:28:00 sthen Exp $

COMMENT =	lightweight LLVM-Python binding for writing JIT compilers

MODPY_EGG_VERSION =	0.23.2

PKGNAME =	py-${DISTNAME}
REVISION =	0

GH_ACCOUNT =	numba
GH_PROJECT =	llvmlite
GH_TAGNAME =	v${MODPY_EGG_VERSION}

CATEGORIES =	devel

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

HOMEPAGE =	http://llvmlite.pydata.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

BUILD_DEPENDS =	devel/llvm

post-extract:
	cp ${WRKSRC}/ffi/Makefile.freebsd ${WRKSRC}/ffi/Makefile.openbsd

do-test:
	cd ${WRKSRC} && PYTHONPATH=. ${SETENV} ${MODPY_BIN} ./runtests.py

.if !${FLAVOR:Mpython3}
BUILD_DEPENDS += devel/py-enum34
RUN_DEPENDS +=	devel/py-enum34
.endif

.include <bsd.port.mk>
