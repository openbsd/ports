# $OpenBSD: Makefile,v 1.13 2022/02/16 16:35:09 sthen Exp $

COMMENT =	library and CLI tool (ykman) for configuring a YubiKey

# 4.x stops using libusb/libykpersonalize, but whatever it changes to
# doesn't work directly with openbsd's usb stack
PORTROACH =	site:https://github.com/Yubico/yubikey-manager/releases/

MODPY_EGG_VERSION =	3.1.2
REVISION =	4

GH_ACCOUNT =	Yubico
GH_PROJECT =	yubikey-manager
GH_TAGNAME =	yubikey-manager-${MODPY_EGG_VERSION}

DISTNAME =	${GH_TAGNAME}
YK_PROJECT =	yubikey-manager

MASTER_SITES0 =	https://github.com/Yubico/python-fido2/archive/
DISTFILES =	${GH_DISTFILE} \
		py-fido2-0.8.2pre20200313-46a0b649.tar.gz{46a0b649b9aa9af79566e6e3961021e070d98b1c.tar.gz}:0

CATEGORIES =	sysutils

MODULES =	lang/python

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
		security/py-openssl${MODPY_FLAVOR} \
		security/py-pyscard${MODPY_FLAVOR}

post-extract:
	mv ${WRKDIR}/python-fido2-*/fido2 ${WRKSRC}/ykman/
	rm -r ${WRKDIR}/python-fido2-*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/man/ykman.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
