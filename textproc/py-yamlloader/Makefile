COMMENT=	loaders and dumpers for PyYAML

MODPY_DISTV=	1.4.1
DISTNAME=	yamlloader-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc
REVISION=	0

HOMEPAGE=	https://github.com/Phynix/yamlloader

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-yaml
TEST_DEPENDS=	devel/py-hypothesis

.include <bsd.port.mk>
