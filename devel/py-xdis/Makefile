# $OpenBSD: Makefile,v 1.4 2016/10/23 08:35:55 shadchin Exp $

COMMENT =		cross-version byte-code disassembler and marshal routines

MODPY_EGG_VERSION =	3.1.0
DISTNAME =		xdis-${MODPY_EGG_VERSION}
PKGNAME =		py-xdis-${MODPY_EGG_VERSION}
CATEGORIES =		devel

HOMEPAGE =		https://github.com/rocky/python-xdis/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

BUILD_DEPENDS =		devel/py-nose${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/pydisasm ${PREFIX}/bin/pydisasm${MODPY_BIN_SUFFIX}
.endif

do-test:
	cd ${WRKSRC} && \
	    ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} --first-package-wins

.include <bsd.port.mk>
