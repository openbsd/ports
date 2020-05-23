# $OpenBSD: Makefile,v 1.3 2020/05/23 21:55:55 sthen Exp $

COMMENT =		Python module to communicate with USB FIDO devices

# using github for now, it has support for OpenBSD; should be ok to move back
# to pypi for the next release
GH_ACCOUNT =		Yubico
GH_PROJECT =		python-fido2
GH_COMMIT =		46a0b649b9aa9af79566e6e3961021e070d98b1c

MODPY_EGG_VERSION =	0.8.2.dev0

#DISTNAME =		fido2-${MODPY_EGG_VERSION}
#PKGNAME =		py-${DISTNAME}
DISTNAME =		py-fido2-0.8.2pre20200313

CATEGORIES =		security

HOMEPAGE =		https://github.com/Yubico/python-fido2

# BSD, APL 2.0, MPL 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
FLAVOR =		python3
FLAVORS =		python3

#MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		security/py-cryptography${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			security/py-pyscard${MODPY_FLAVOR}
BUILD_DEPENDS =		${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${MODPY_PY_PREFIX}fido2
	${INSTALL_DATA} ${WRKSRC}/examples/*.py \
		${PREFIX}/share/examples/${MODPY_PY_PREFIX}fido2

.include <bsd.port.mk>
