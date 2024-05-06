COMMENT=	console-based multitool to explore and arrange tabular data

MODPY_EGG_VERSION=	3.0.2
DISTNAME=	visidata-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	math textproc

HOMEPAGE=	https://visidata.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-dateutil${MODPY_FLAVOR} \
		devel/py-importlib-metadata${MODPY_FLAVOR}

# tests are available but not included in the standard pypi download
NO_TEST=	Yes

.include <bsd.port.mk>
