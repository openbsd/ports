COMMENT=	transform a possibly malformed HTML5 into an ElementTree

MODPY_DISTV=	2.0.0
DISTNAME=	tinyhtml5-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	https://github.com/CourtBouillon/tinyhtml5

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-webencodings
xTEST_DEPENDS=	devel/py-mock \
		devel/py-test-expect \
		textproc/py-chardet \
		textproc/py-lxml

.include <bsd.port.mk>
