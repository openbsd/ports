COMMENT=		fetching finanical market data with Python

MODPY_EGG_VERSION=	0.1.69
DISTNAME=		yfinance-${MODPY_EGG_VERSION}
PKGNAME=		py-yfinance-${MODPY_EGG_VERSION}

CATEGORIES=		misc

MAINTAINER=		Clemens Goessnitzer <clemens@goessnitzer.info>

HOMEPAGE=		https://github.com/ranaroussi/yfinance

# Apache-2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

FLAVORS=		python3
FLAVOR=			python3

MODPY_SETUPTOOLS=	Yes
MODPY_PI=		Yes

RUN_DEPENDS=		devel/py-multitasking${MODPY_FLAVOR} \
			math/py-pandas${MODPY_FLAVOR} \
			textproc/py-lxml${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

.include <bsd.port.mk>
