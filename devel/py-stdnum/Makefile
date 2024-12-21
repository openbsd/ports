COMMENT=		parse, validate and reformat standard numbers and codes

MODPY_DISTV=	1.20
DISTNAME=		python-stdnum-${MODPY_DISTV}
PKGNAME=		py-stdnum-${MODPY_DISTV}
CATEGORIES=		devel
REVISION=		1

HOMEPAGE=		https://arthurdejong.org/python-stdnum/

MAINTAINER=		Sebastien Marie <semarie@kapouay.eu.org>

# LGPLv2+
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

TEST_DEPENDS=		devel/py-nose

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${TEST_ENV} ${MODPY_BIN} \
		${LOCALBASE}/bin/nosetests --cover-min-percentage=0 tests

.include <bsd.port.mk>
