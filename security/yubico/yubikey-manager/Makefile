COMMENT=	library and CLI tool (ykman) for configuring a YubiKey

MODPY_EGG_VERSION=	5.3.0

DISTNAME=	yubikey_manager-${MODPY_EGG_VERSION}
PKGNAME=	yubikey-manager-${MODPY_EGG_VERSION}
YK_PROJECT=	yubikey-manager
REVISION=	0

CATEGORIES=	sysutils

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-click${MODPY_FLAVOR}>=8,<9 \
		security/pcsc-lite \
		security/py-cryptography${MODPY_FLAVOR}<43 \
		security/py-fido2${MODPY_FLAVOR}>=0.9,<2.0 \
		security/py-keyring${MODPY_FLAVOR}<24 \
		security/py-pyscard${MODPY_FLAVOR}<3.0

# tests need "makefun"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/man/ykman.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
