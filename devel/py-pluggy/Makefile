# $OpenBSD: Makefile,v 1.3 2017/01/03 19:19:49 landry Exp $

COMMENT =		plugin and hook calling mechanisms for Python

MODPY_EGG_VERSION =	0.4.0
DISTNAME =		pluggy-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_SUFX =		.zip

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
