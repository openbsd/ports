COMMENT=	library and CLI tool (ykman) for configuring a YubiKey

MODPY_DISTV=	5.7.2

DISTNAME=	yubikey_manager-${MODPY_DISTV}
PKGNAME=	yubikey-manager-${MODPY_DISTV}
YK_PROJECT=	yubikey-manager
REVISION=	0

CATEGORIES=	sysutils

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-click<9 \
		security/pcsc-lite \
		security/py-cryptography<48 \
		security/py-fido2<3 \
		security/py-keyring<26 \
		security/py-pyscard

# tests need "makefun"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/man/ykman.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
