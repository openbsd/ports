COMMENT=	console-based multitool to explore and arrange tabular data

MODPY_DISTV=	3.3
# use github distfile for tests
GH_ACCOUNT=	saulpw
GH_PROJECT=	visidata
GH_TAGNAME=	v${MODPY_DISTV}

CATEGORIES=	math textproc

HOMEPAGE=	https://visidata.org/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/desktop-file-utils \
		devel/py-dateutil \
		devel/py-importlib-metadata

PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
