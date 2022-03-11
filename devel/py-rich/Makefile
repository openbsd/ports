COMMENT =		Python library for rich text and beautiful formatting

MODPY_EGG_VERSION =	9.11.0
DISTNAME =		rich-${MODPY_EGG_VERSION}
PKGNAME =		py-rich-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR =		python3

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-colorama${MODPY_FLAVOR} \
			devel/py-typing-extensions${MODPY_FLAVOR} \
			textproc/py-commonmark${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR}

.include <bsd.port.mk>
