COMMENT=	console-based multitool to explore and arrange tabular data

MODPY_DISTV=	3.2
GH_ACCOUNT=	saulpw
GH_PROJECT=	visidata
GH_TAGNAME=	v${MODPY_DISTV}
#DISTNAME=	visidata-${MODPY_DISTV}

CATEGORIES=	math textproc

HOMEPAGE=	https://visidata.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
#MODPY_PI=	Yes

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-dateutil \
		devel/py-importlib-metadata

# tests are available but not included in the standard pypi download
#NO_TEST=	Yes
PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
