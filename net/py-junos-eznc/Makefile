COMMENT=	library for Junos automation

MODPY_DISTV=	2.7.3
DISTNAME=	junos-eznc-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	net

# Apache2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

# tests need "nose2".
# tests not present in pypi distfile, only github.
NO_TEST=	Yes

RUN_DEPENDS=	textproc/py-lxml \
		net/py-ncclient \
		security/py-scp \
		www/py-jinja2 \
		textproc/py-yaml \
		security/py-paramiko \
		devel/py-six \
		devel/py-serial \
		textproc/py-yamlordereddictloader \
		devel/py-parsing \
		devel/py-transitions

.include <bsd.port.mk>
