# $OpenBSD: Makefile,v 1.6 2020/07/03 21:13:08 sthen Exp $

COMMENT =	library and CLI tool (ykman) for configuring a YubiKey

MODPY_EGG_VERSION =	3.1.1
REVISION =	2

DISTNAME =	yubikey-manager-${MODPY_EGG_VERSION}
YK_PROJECT =	yubikey-manager

CATEGORIES =	sysutils

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

WANTLIB += ykpers-1 # dlopen()'d

BUILD_DEPENDS =	devel/swig
LIB_DEPENDS =	security/yubico/yubikey-personalization
RUN_DEPENDS =	devel/py-click${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR} \
		devel/pyusb${MODPY_FLAVOR} \
		security/pcsc-lite \
		security/py-cryptography${MODPY_FLAVOR} \
		security/py-fido2${MODPY_FLAVOR} \
		security/py-openssl${MODPY_FLAVOR} \
		security/py-pyscard${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/man/ykman.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
