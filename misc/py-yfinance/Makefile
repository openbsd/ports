COMMENT=		fetching finanical market data with Python

MODPY_DISTV=	0.1.72
DISTNAME=		yfinance-${MODPY_DISTV}
PKGNAME=		py-yfinance-${MODPY_DISTV}
REVISION=		3

CATEGORIES=		misc

MAINTAINER=		Clemens Goessnitzer <clemens@goessnitzer.info>

HOMEPAGE=		https://github.com/ranaroussi/yfinance

# Apache-2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PYBUILD=		setuptools
MODPY_PI=		Yes

# missing from pypi distfile
NO_TEST=		Yes

RUN_DEPENDS=		devel/py-multitasking \
			math/py-pandas \
			textproc/py-lxml \
			www/py-requests

.include <bsd.port.mk>
