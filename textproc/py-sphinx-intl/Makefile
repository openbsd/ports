COMMENT=	internationalization helper for Sphinx

MODPY_DISTV=	2.3.2
DISTNAME=	sphinx_intl-${MODPY_DISTV}
PKGNAME=	py-sphinx-intl-${MODPY_DISTV}

CATEGORIES=	textproc

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-babel \
		devel/py-click \
		textproc/py-sphinx
#NO_TEST=	Yes

.include <bsd.port.mk>
