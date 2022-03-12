COMMENT =	super-fast templating language

MODPY_EGG_VERSION =	1.2.0
DISTNAME =		Mako-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}
FIX_EXTRACT_PERMISSIONS = Yes

CATEGORIES =		www

HOMEPAGE =		https://www.makotemplates.org/

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

# lingua not yet ported
pre-test:
	rm ${WRKSRC}/test/ext/test_linguaplugin.py

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		textproc/py-MarkupSafe${MODPY_FLAVOR} \
			www/py-beaker${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-babel${MODPY_FLAVOR}

.include <bsd.port.mk>
