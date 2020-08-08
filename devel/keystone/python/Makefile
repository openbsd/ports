# $OpenBSD: Makefile,v 1.6 2020/08/08 07:39:25 jasper Exp $

COMMENT =	Python bindings for keystone

MODPY_EGG_VERSION = ${GH_TAGNAME}

PKGNAME =       py-${DISTNAME}

MODULES =      devel/cmake \
	       lang/python
MODPY_SETUPTOOLS =Yes

WRKDIST =       ${WRKDIR}/${DISTNAME}/bindings/python

FLAVORS =       python3
FLAVOR ?=

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
