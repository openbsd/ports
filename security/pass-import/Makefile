COMMENT=	importer for pass (passwordstore)

MODPY_EGG_VERSION= 3.5
REVISION=	0
DISTNAME=	pass-import-${MODPY_EGG_VERSION}

CATEGORIES=	security

HOMEPAGE=	https://github.com/roddhjav/pass-import

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

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

post-install:
	cd ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/usr/local; \
	mv lib/* ${PREFIX}/lib/; \
	mv man/man1/* ${PREFIX}/man/man1/; \
	mv share/* ${PREFIX}/share/
	find ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/usr -type d -delete

.include <bsd.port.mk>
