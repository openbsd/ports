COMMENT=	Python library for NETCONF clients

MODPY_DISTV=	0.6.18

# using github distfile for tests
GH_ACCOUNT=	ncclient
GH_PROJECT=	ncclient
GH_TAGNAME=	v${MODPY_DISTV}

DISTNAME=	ncclient-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	net

HOMEPAGE=	https://ncclient.readthedocs.io/en/latest/

# Apache2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	security/py-paramiko \
		textproc/py-lxml

.include <bsd.port.mk>
