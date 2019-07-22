# $OpenBSD: Makefile,v 1.25 2019/07/22 13:08:18 kmos Exp $

COMMENT =	super-fast templating language

MODPY_EGG_VERSION = 	1.0.14
DISTNAME =		Mako-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www

HOMEPAGE =		https://www.makotemplates.org/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS = 	Yes
MODPY_PYTEST =		Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		textproc/py-MarkupSafe${MODPY_FLAVOR} \
			www/py-beaker${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/mako-render \
		${PREFIX}/bin/mako-render${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
