# $OpenBSD: Makefile,v 1.7 2017/03/05 18:18:24 shadchin Exp $

COMMENT =		implementation of JSON Schema validation for Python

MODPY_EGG_VERSION =	2.6.0
DISTNAME =		jsonschema-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://github.com/Julian/jsonschema

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS =		devel/py-vcversioner${MODPY_FLAVOR}
.if !${FLAVOR:Mpython3}
RUN_DEPENDS =		devel/py-functools32
.endif
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/jsonschema{,${MODPY_BIN_SUFFIX}}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest jsonschema

.include <bsd.port.mk>
