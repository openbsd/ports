COMMENT=	importer for pass (passwordstore)

MODPY_EGG_VERSION= 3.5
DISTNAME=	pass-import-${MODPY_EGG_VERSION}

CATEGORIES=	security

HOMEPAGE=	https://github.com/roddhjav/pass-import

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_SETUPTOOLS= Yes

# no tests in pypi distfile; no formatted manpages in github releases distfile
# dropping tests is better than a BDEP on pandoc + pypandoc...
MODPY_PI=	Yes
NO_TEST=	Yes

BUILD_DEPENDS=	security/py-zxcvbn${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

RUN_DEPENDS=	security/password-store \
		devel/py-magic${MODPY_FLAVOR} \
		security/py-cryptography${MODPY_FLAVOR} \
		security/py-pykeepass${MODPY_FLAVOR} \
		security/py-zxcvbn${MODPY_FLAVOR} \
		textproc/py-defusedxml${MODPY_FLAVOR} \
		textproc/py-yaml${MODPY_FLAVOR} \
		www/py-requests${MODPY_FLAVOR}

# some import modules require additional dependencies;
# - gnome-keyring requires installing py3-secretstorage
# - aegis uses py-cryptography but requires it to be built against
# openssl with scrypt

.include <bsd.port.mk>
