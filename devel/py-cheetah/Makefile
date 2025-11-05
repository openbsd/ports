COMMENT=	Python-powered template engine and code generator

MODPY_DISTV=	3.4.0
DISTNAME=	ct3-${MODPY_DISTV}
PKGNAME=	py-cheetah-${MODPY_DISTV}
CATEGORIES=	devel textproc

# https://pypi.org/project/CT3/
# https://github.com/CheetahTemplate3/cheetah3
HOMEPAGE=	https://cheetahtemplate.org/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH} \
		textproc/py-markdown \
		textproc/py-pygments

do-test:
	cd ${WRKDIR}; cheetah test

.include <bsd.port.mk>
