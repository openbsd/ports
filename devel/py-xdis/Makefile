# $OpenBSD: Makefile,v 1.11 2017/05/21 17:54:10 shadchin Exp $

COMMENT =		cross-version byte-code disassembler and marshal routines

MODPY_EGG_VERSION =	3.3.1
DISTNAME =		xdis-${MODPY_EGG_VERSION}
PKGNAME =		py-xdis-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/rocky/python-xdis/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}
BUILD_DEPENDS =		devel/py-test-runner${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/pydisasm{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
