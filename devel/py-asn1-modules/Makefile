# $OpenBSD: Makefile,v 1.8 2017/11/02 20:49:18 ajacoutot Exp $

COMMENT =		collection of ASN.1 data structures for py-asn1

MODPY_EGG_VERSION =	0.1.5
DISTNAME =		pyasn1-modules-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
PKG_ARCH =		*

HOMEPAGE =		https://github.com/etingof/pyasn1

# BSD 2-Clause
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR?=

MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-asn1${MODPY_FLAVOR}
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

MODPY_ADJ_FILES =	tools/*.py

post-install:
	cd ${WRKSRC}/tools; for i in *; do \
		${INSTALL_SCRIPT} $$i ${PREFIX}/bin/$$i${MODPY_BIN_SUFFIX}; done

do-test: fake
	@cd ${WRKSRC} && env PYTHONPATH=${WRKINST}/${MODPY_SITEPKG} \
		${MODPY_BIN} -m pytest

.include <bsd.port.mk>
