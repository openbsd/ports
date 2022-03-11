COMMENT=	importer for pass (passwordstore)

V=		3.2
DISTNAME=	pass-import-$V

CATEGORIES=	security

HOMEPAGE=	https://github.com/roddhjav/pass-import

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/roddhjav/pass-import/releases/download/v$V/

MODULES=	lang/python

MODPY_SETUPTOOLS=  Yes
MODPY_EGG_VERSION= $V
REVISION=          0

MODPY_PYTEST=	Yes

RUN_DEPENDS=	security/password-store \
		devel/py-magic${MODPY_FLAVOR} \
		security/py-cryptography${MODPY_FLAVOR} \
		security/py-pykeepass${MODPY_FLAVOR} \
		textproc/py-defusedxml${MODPY_FLAVOR}

# some import modules require additional dependencies;
# - gnome-keyring requires installing py3-secretstorage
# - aegis requires a version of py-cryptography with scrypt (which
#   currently requires openssl 1.1.x)

.include <bsd.port.mk>
