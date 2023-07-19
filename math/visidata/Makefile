COMMENT=	console-based multitool to explore and arrange tabular data

MODPY_EGG_VERSION=	2.11.1
DISTNAME=	visidata-${MODPY_EGG_VERSION}

CATEGORIES=	math textproc

HOMEPAGE=	https://visidata.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-importlib-metadata${MODPY_FLAVOR}

# tests are available but not included in the standard pypi download
NO_TEST=	Yes

.include <bsd.port.mk>
