# $OpenBSD: Makefile,v 1.11 2022/01/07 11:27:26 sthen Exp $

COMMENT =	library and CLI tool (ykman) for configuring a YubiKey

# 4.x stops using libusb/libykpersonalize, but whatever it changes to
# doesn't work directly with openbsd's usb stack
PORTROACH =	site:https://github.com/Yubico/yubikey-manager/releases/

MODPY_EGG_VERSION =	3.1.2
REVISION =	2

DISTNAME =	yubikey-manager-${MODPY_EGG_VERSION}
YK_PROJECT =	yubikey-manager

# normally would be GH_* with a url like this, but MASTER_SITES is overridden
# in ../Makefile.inc
MASTER_SITES =	https://github.com/Yubico/yubikey-manager/archive/
WRKDIST =	${WRKDIR}/yubikey-manager-${DISTNAME}

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
		security/py-fido2${MODPY_FLAVOR}<=0.9 \
		security/py-openssl${MODPY_FLAVOR} \
		security/py-pyscard${MODPY_FLAVOR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/man/ykman.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
