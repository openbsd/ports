# $OpenBSD: Makefile,v 1.9 2022/01/17 15:42:47 kmos Exp $

BROKEN-riscv64 =	Unknown architecture riscv64

COMMENT =	Python bindings for keystone

MODPY_EGG_VERSION = ${GH_TAGNAME}

PKGNAME =       py-${DISTNAME}
REVISION =      0

MODULES =      devel/cmake \
	       lang/python
MODPY_SETUPTOOLS =Yes

WRKDIST =       ${WRKDIR}/${DISTNAME}/bindings/python

FLAVORS =       python3
FLAVOR ?=

COMPILER =	base-clang ports-gcc

RUN_DEPENDS =   devel/keystone/main

NO_TEST =	Yes

# Prevent cmake.port.mk from taking over configure, whilst using
# the python.port.mk build target as this port doesn't use
# cmake configure per se.
CONFIGURE_STYLE=none
do-build:
	${MODPY_BUILD_TARGET}

do-install:
	${MODPY_INSTALL_TARGET}

.include <bsd.port.mk>
