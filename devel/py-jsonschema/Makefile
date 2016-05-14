# $OpenBSD: Makefile,v 1.4 2016/05/14 15:09:56 danj Exp $

COMMENT =		implementation of JSON Schema validation for Python

MODPY_EGG_VERSION =	2.5.1
DISTNAME =		jsonschema-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

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
RUN_DEPENDS += devel/py-functools32
.endif
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/jsonschema ${PREFIX}/bin/jsonschema${MODPY_BIN_SUFFIX}
.endif

do-test:
	cd ${WRKSRC}/jsonschema && \
		${LOCALBASE}/bin/py.test${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
