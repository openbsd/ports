COMMENT=	JFFS2 filesystem extraction tool

# 0.4.3+ needs "lzallright" instead of py-lzo
MODPY_DISTV=	0.4.2
REVISION=	3
DISTNAME=	jefferson-${MODPY_DISTV}

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/onekey-sec/jefferson

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

RUN_DEPENDS=	archivers/py-lzo \
		devel/py-cstruct \
		devel/py-click

NO_TEST=	Yes

.include <bsd.port.mk>
