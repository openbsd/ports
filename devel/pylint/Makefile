COMMENT =		lint-like code checker for Python code

# XXX check/update py-astroid pkgspec in RUN_DEPENDS when updating
MODPY_EGG_VERSION =	2.7.4
DISTNAME=		pylint-${MODPY_EGG_VERSION}
REVISION=		1

CATEGORIES=		devel

HOMEPAGE=		https://www.pylint.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
TEST_ENV =		PY_IGNORE_IMPORTMISMATCH=1

RUN_DEPENDS =		devel/py-astroid${MODPY_FLAVOR}>=2.5.2,<2.7 \
			devel/py-isort${MODPY_FLAVOR} \
			devel/py-mccabe${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-logilab-common${MODPY_FLAVOR}>=1.3.0 \
			devel/py-test-benchmark${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

FULLPKGNAME =		${PKGNAME:S/pylint/pylint3/}

.include <bsd.port.mk>
