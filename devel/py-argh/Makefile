COMMENT=	simple wrapper for Python argparse module

MODPY_DISTV=	0.28.1
DISTNAME=	argh-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
HOMEPAGE=	https://pythonhosted.org/argh/
REVISION=	1

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	flit_core

RUN_DEPENDS=	devel/py-argcomplete

# it needs iocapture
NO_TEST=	Yes

.include <bsd.port.mk>
