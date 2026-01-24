COMMENT=	dynamic versioning library and CLI

MODPY_DISTV=	1.25.0
DISTNAME=	dunamai-${MODPY_DISTV}
PKGNAME=	py-dunamai-${MODPY_DISTV}

CATEGORIES=	devel

HOMEPAGE=	https://github.com/mtkennerly/dunamai

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	poetry-core
MODPY_PI=	Yes

RUN_DEPENDS=	sysutils/py-packaging

PORTHOME=	${WRKDIR}
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/git \
		devel/mercurial \
		devel/subversion \
		devel/fossil
# also does bzr, pijul (not in ports) and darcs (wants interaction to
# set email address)

.include <bsd.port.mk>
