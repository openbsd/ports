COMMENT=	loaders and dumpers for PyYAML

MODPY_DISTV=	1.5.1
DISTNAME=	yamlloader-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc

HOMEPAGE=	https://github.com/Phynix/yamlloader

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-yaml
TEST_DEPENDS=	devel/py-hypothesis

.include <bsd.port.mk>
