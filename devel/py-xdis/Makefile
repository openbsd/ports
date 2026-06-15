COMMENT=	cross-version byte-code disassembler and marshal routines

# pypi releases are very stale
MODPY_DISTV=	6.3.0
GH_ACCOUNT=	rocky
GH_PROJECT=	python-xdis
GH_TAGNAME=	${MODPY_DISTV}
DISTNAME=	xdis-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/rocky/python-xdis/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS= pytest/

RUN_DEPENDS=	devel/py-click \
		devel/py-six

post-test:
	cd ${WRKSRC}/test; env ${TEST_ENV} make PYTHON=${MODPY_BIN}

.include <bsd.port.mk>
