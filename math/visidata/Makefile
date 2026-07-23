COMMENT=	console-based multitool to explore and arrange tabular data

MODPY_DISTV=	3.4
DISTNAME=	visidata-${MODPY_DISTV}

# use github distfile for tests
#MODPY_PI=	Yes
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
		devel/py-importlib-metadata \
		x11/gtk+4,-guic

PORTHOME=	${WRKDIR}

BUILD_DEPENDS=	textproc/groff
do-configure:
	cd ${WRKSRC}; make man

.include <bsd.port.mk>
