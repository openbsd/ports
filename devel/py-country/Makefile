# $OpenBSD: Makefile,v 1.12 2015/09/29 10:51:53 sthen Exp $

COMMENT =		country, language, currency and scripts definitions

MODPY_EGG_VERSION =	1.10
DISTNAME =		pycountry-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
EXTRACT_SUFX=		.zip
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://pypi.python.org/pypi/pycountry

# LGPL2.1
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-test \
			${BASE_PKGPATH}=${MODPY_EGG_VERSION}

do-test:
	@cd ${WRKSRC}/src/pycountry/tests/ && \
		${MODPY_BIN} test_general.py && \
		echo "OK" || \
		echo "FAIL"

.include <bsd.port.mk>
