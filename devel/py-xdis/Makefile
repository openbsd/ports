# $OpenBSD: Makefile,v 1.8 2016/12/17 11:25:33 shadchin Exp $

COMMENT =		cross-version byte-code disassembler and marshal routines

MODPY_EGG_VERSION =	3.2.4
DISTNAME =		xdis-${MODPY_EGG_VERSION}
PKGNAME =		py-xdis-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/rocky/python-xdis/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

post-install:
	mv ${PREFIX}/bin/pydisasm ${PREFIX}/bin/pydisasm${MODPY_BIN_SUFFIX}

do-test:
	cd ${WRKSRC} && \
	    ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} --first-package-wins

.include <bsd.port.mk>
