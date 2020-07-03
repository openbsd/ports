# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:46 sthen Exp $

COMMENT =	lightweight LLVM-Python binding for writing JIT compilers

MODPY_EGG_VERSION =	0.29.0
REVISION =	1
GH_ACCOUNT =	numba
GH_PROJECT =	llvmlite
GH_TAGNAME =	v${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	devel

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

HOMEPAGE =	http://llvmlite.pydata.org/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} LLVM m

COMPILER =	base-clang
MODULES =	lang/python

FLAVORS =	python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
BUILD_DEPENDS += devel/py-enum34
RUN_DEPENDS +=	devel/py-enum34
.endif

MAKE_ENV =	LLVM_CONFIG="/usr/bin/llvm-config"

do-test:
	cd ${WRKSRC} && PYTHONPATH=. ${SETENV} ${MODPY_BIN} ./runtests.py

.include <bsd.port.mk>
