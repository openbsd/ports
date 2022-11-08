COMMENT=	library and CLI tool (ykman) for configuring a YubiKey

# v5 requires newer click, and changes API
MODPY_EGG_VERSION=	4.0.9

DISTNAME=	yubikey-manager-${MODPY_EGG_VERSION}
YK_PROJECT=	yubikey-manager

CATEGORIES=	sysutils

MODULES=	lang/python

MODPY_PYBUILD=	poetry-core
MODPY_PI=		Yes

RUN_DEPENDS=	devel/py-click${MODPY_FLAVOR}<9 \
		security/pcsc-lite \
		security/py-cryptography${MODPY_FLAVOR}<39 \
		security/py-fido2${MODPY_FLAVOR}>=0.9,<2.0 \
		security/py-openssl${MODPY_FLAVOR} \
		security/py-pyscard${MODPY_FLAVOR}<3.0

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/man/ykman.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
