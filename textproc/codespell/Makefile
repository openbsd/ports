COMMENT =		source code spelling checker

MODPY_EGG_VERSION =	2.2.6
DISTNAME =		codespell-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		devel textproc

HOMEPAGE =		https://github.com/codespell-project/codespell

# GPLv2
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		textproc/py-chardet${MODPY_FLAVOR}

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
