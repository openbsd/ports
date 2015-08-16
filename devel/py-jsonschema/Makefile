# $OpenBSD: Makefile,v 1.1.1.1 2015/08/16 19:46:22 edd Exp $

COMMENT =		implementation of JSON Schema validation for Python

MODPY_EGG_VERSION =	2.5.1
DISTNAME =		jsonschema-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://github.com/Julian/jsonschema

RUN_DEPENDS =		devel/py-functools32
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test \
			devel/py-mock

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

do-test:
	cd ${WRKSRC}/jsonschema && \
		${LOCALBASE}/bin/py.test

.include <bsd.port.mk>
