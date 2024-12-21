COMMENT=	download data from remote data services (such as THREDDS)

MODPY_DISTV=	0.10.0
DISTNAME=	siphon-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	net
REVISION=	0

HOMEPAGE=	https://unidata.github.io/siphon/

MAINTAINER=	Martin Reindl <martin@catai.org>

# BSD
PERMIT_PACKAGE=	Yes

MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

MODULES=	lang/python

RUN_DEPENDS+=	devel/py-protobuf \
		math/py-numpy \
		math/py-pandas \
		www/py-beautifulsoup4 \
		www/py-requests

TEST_DEPENDS=	devel/py-coveralls \
		devel/py-test-cov \
		math/py-netcdf4 \
		www/py-vcrpy

.include <bsd.port.mk>
