COMMENT=	Python documentation generator

MODPY_DISTV=	8.2.1
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
		textproc/py-sphinxcontrib/htmlhelp \
		textproc/py-sphinxcontrib/serializinghtml \
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
		textproc/py-roman-numerals \
		sysutils/py-packaging

BUILD_DEPENDS=	devel/gettext,-tools
TEST_DEPENDS=	devel/py-test-xdist \
		sysutils/py-psutil \
		textproc/py-defusedxml \
		lang/cython \
		devel/py-setuptools \
		devel/py-typing-extensions \
		print/texlive/texmf,-full
PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
