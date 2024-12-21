COMMENT=	console-based multitool to explore and arrange tabular data

MODPY_DISTV=	3.1.1
DISTNAME=	visidata-${MODPY_DISTV}
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
		devel/py-dateutil \
		devel/py-importlib-metadata

# tests are available but not included in the standard pypi download
NO_TEST=	Yes

.include <bsd.port.mk>
