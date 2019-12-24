# $OpenBSD: Makefile,v 1.2 2019/12/24 14:18:28 sthen Exp $

COMMENT =		Python module to communicate with USB FIDO devices

MODPY_EGG_VERSION =	0.8.1

DISTNAME =		fido2-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

HOMEPAGE =		https://github.com/Yubico/python-fido2

# BSD, APL 2.0, MPL 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		security/py-cryptography${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			security/py-pyscard
BUILD_DEPENDS =		${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}fido2
	${INSTALL_DATA} ${WRKSRC}/examples/*.py \
		${PREFIX}/share/examples/${MODPY_PY_PREFIX}fido2

.include <bsd.port.mk>
