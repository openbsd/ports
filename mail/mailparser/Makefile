COMMENT =		wrapper for 'email' in Python's standard library

MODPY_EGG_VERSION =	3.15.0
DISTNAME =		mail-parser-${MODPY_EGG_VERSION}
PKGNAME =		mailparser-${MODPY_EGG_VERSION}

CATEGORIES =		mail

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

RUN_DEPENDS =		devel/py-simplejson${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

.include <bsd.port.mk>
