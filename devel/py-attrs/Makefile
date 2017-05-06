# $OpenBSD: Makefile,v 1.1.1.1 2017/05/06 09:43:59 landry Exp $

COMMENT =		classes without boilerplate

MODPY_EGG_VERSION =	16.3.0

DISTNAME =		attrs-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://www.attrs.org/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-zopeinterface${MODPY_FLAVOR}
.endif

TEST_ENV +=		PYTHONPATH=${WRKSRC}/lib

do-test:
	cd ${WRKSRC} && ${SETENV} ${TEST_ENV} ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
