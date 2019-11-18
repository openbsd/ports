# $OpenBSD: Makefile,v 1.13 2019/11/18 00:34:25 kmos Exp $

COMMENT =		collection of ASN.1 data structures for py-asn1

MODPY_EGG_VERSION =	0.1.5
DISTNAME =		pyasn1-modules-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		0

HOMEPAGE =		https://github.com/etingof/pyasn1

# BSD 2-Clause
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR?=

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-asn1${MODPY_FLAVOR}

MODPY_ADJ_FILES =	tools/*.py

TEST_ENV +=		PYTHONPATH=${WRKINST}/${MODPY_SITEPKG}

post-install:
	cd ${WRKSRC}/tools; for i in *; do \
		${INSTALL_SCRIPT} $$i ${PREFIX}/bin/$$i${MODPY_BIN_SUFFIX}; done

.include <bsd.port.mk>
