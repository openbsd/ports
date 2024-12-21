COMMENT=	importer for pass (passwordstore)

MODPY_DISTV=	3.5
REVISION=	1
DISTNAME=	pass-import-${MODPY_DISTV}

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

BUILD_DEPENDS=	security/py-zxcvbn \
		textproc/py-yaml \
		www/py-requests

RUN_DEPENDS=	security/password-store \
		devel/py-magic \
		security/py-cryptography \
		security/py-pykeepass \
		security/py-zxcvbn \
		textproc/py-defusedxml \
		textproc/py-yaml \
		www/py-requests

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
