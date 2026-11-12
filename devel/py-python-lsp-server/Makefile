COMMENT=	Python Language Server

MODPY_DISTV=	1.15.0
DISTNAME=	python_lsp_server-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/_/-/g}
REVISION=	2

HOMEPAGE=	https://github.com/python-lsp/python-lsp-server

CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

# required
RUN_DEPENDS=	devel/py-docstring-to-markdown \
		devel/py-jedi<0.21.0 \
		devel/py-pluggy>=1.0.0 \
		net/py-python-lsp-jsonrpc>=1.1.0,<2.0.0 \
		textproc/py-ujson>=3.0.0 \
		textproc/py-black

# optional
RUN_DEPENDS +=	devel/autopep8 \
		devel/flake8<8 \
		devel/py-mccabe<0.8.0 \
		devel/py-codestyle \
		devel/py-pydocstyle<6.4.0 \
		devel/pyflakes \
		devel/pylint \
		devel/py-rope \
		devel/py-yapf \
		textproc/py-whatthepatch<2.0.0

TEST_DEPENDS=	devel/pylint \
		devel/py-test-cov \
		devel/py-coverage \
		math/py-numpy \
		math/py-pandas \
		graphics/py-matplotlib \
		x11/py-qt6 \
		devel/py-flaky \
		net/py-websockets \

PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
