# $OpenBSD: Makefile,v 1.10 2014/11/14 11:27:49 benoit Exp $

COMMENT =		country, language, currency and scripts definitions

MODPY_EGG_VERSION =	1.10
DISTNAME =		pycountry-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
EXTRACT_SUFX=		.zip

CATEGORIES =		devel

HOMEPAGE =		http://pypi.python.org/pypi/pycountry

# LGPL2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=		${MASTER_SITE_PYPI:=p/pycountry/}

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
