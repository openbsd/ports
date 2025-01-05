COMMENT=	rapid multi-Python deployment

DISTNAME=	execnet-${MODPY_DISTV}
MODPY_DISTV=	2.1.1
MODPY_PI=	Yes
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://execnet.readthedocs.io/en/latest/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatch-vcs
# disable hanging test
MODPY_PYTEST_ARGS= -k 'not test_popen_io[gevent-sys.executable]'

.include <bsd.port.mk>
