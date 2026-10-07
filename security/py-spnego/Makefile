COMMENT=	SPNEGO authentication library

MODPY_DISTV=	0.12.3
DISTNAME=	pyspnego-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/py/py-/}

CATEGORIES=	security

HOMEPAGE=	https://github.com/jborean93/pyspnego

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	security/py-cryptography \
		security/py-gssapi \
		security/py-krb5

TEST_DEPENDS=	devel/py-isort \
		devel/py-mypy \
		devel/py-test-mock \
		textproc/py-black \
		textproc/py-ruamel.yaml

.include <bsd.port.mk>
