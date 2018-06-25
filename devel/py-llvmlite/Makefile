# $OpenBSD: Makefile,v 1.1.1.1 2018/06/25 05:58:54 rpointel Exp $

COMMENT =	lightweight LLVM-Python binding for writing JIT compilers

MODPY_EGG_VERSION =	0.23.2

PKGNAME =	py-${DISTNAME}

GH_ACCOUNT =	numba
GH_PROJECT =	llvmlite
GH_TAGNAME =	v${MODPY_EGG_VERSION}

CATEGORIES =	devel

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

HOMEPAGE =	http://llvmlite.pydata.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

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

WANTLIB += ${COMPILER_LIBCXX} m

.include <bsd.port.mk>
