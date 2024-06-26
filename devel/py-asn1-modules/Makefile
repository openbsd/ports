COMMENT =		collection of ASN.1 data structures for py-asn1

MODPY_EGG_VERSION =	0.4.0
DISTNAME =		pyasn1_modules-${MODPY_EGG_VERSION}
PKGNAME =		py-asn1-modules-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/pyasn1/pyasn1-modules

# BSD 2-Clause
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-asn1${MODPY_FLAVOR}

MODPY_ADJ_FILES =	tools/*.py

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/tools/* ${PREFIX}/bin/

.include <bsd.port.mk>
