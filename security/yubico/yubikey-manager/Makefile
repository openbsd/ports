COMMENT=	library and CLI tool (ykman) for configuring a YubiKey

MODPY_EGG_VERSION=	5.5.1

DISTNAME=	yubikey_manager-${MODPY_EGG_VERSION}
PKGNAME=	yubikey-manager-${MODPY_EGG_VERSION}
YK_PROJECT=	yubikey-manager

CATEGORIES=	sysutils

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-click${MODPY_FLAVOR} \
		security/pcsc-lite \
		security/py-cryptography${MODPY_FLAVOR}<45 \
		security/py-fido2${MODPY_FLAVOR} \
		security/py-keyring${MODPY_FLAVOR}<26 \
		security/py-pyscard${MODPY_FLAVOR}

# tests need "makefun"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/man/ykman.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
