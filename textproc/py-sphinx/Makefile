COMMENT=	Python documentation generator

MODPY_DISTV=	7.4.7
REVISION=	2
DISTNAME=	sphinx-${MODPY_DISTV}
PKGNAME=	py-sphinx-${MODPY_DISTV}

CATEGORIES=	textproc

HOMEPAGE=	https://www.sphinx-doc.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	flit_core

RUN_DEPENDS+=	textproc/py-sphinxcontrib/applehelp \
		textproc/py-sphinxcontrib/devhelp \
		textproc/py-sphinxcontrib/jsmath \
		textproc/py-sphinxcontrib/htmlhelp>=2.0.0 \
		textproc/py-sphinxcontrib/serializinghtml>=1.1.9 \
		textproc/py-sphinxcontrib/qthelp \
		textproc/py-sphinxcontrib/websupport \
		www/py-jinja2 \
		textproc/py-pygments \
		textproc/py-docutils<0.22 \
		textproc/py-snowballstemmer \
		devel/py-babel \
		textproc/py-alabaster \
		graphics/py-imagesize \
		www/py-requests \
		sysutils/py-packaging

BUILD_DEPENDS=	devel/gettext,-tools
TEST_DEPENDS=	devel/py-mock \
		devel/py-html5lib \
		print/texlive/texmf,-full
PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
