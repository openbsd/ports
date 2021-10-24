# $OpenBSD: Makefile,v 1.31 2021/10/24 09:28:52 sthen Exp $

COMMENT =	super-fast templating language

MODPY_EGG_VERSION = 	1.1.1
DISTNAME =		Mako-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
REVISION =		3

CATEGORIES =		www

HOMEPAGE =		https://www.makotemplates.org/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS = 	Yes
MODPY_PYTEST =		Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		textproc/py-MarkupSafe${MODPY_FLAVOR} \
			www/py-beaker${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
