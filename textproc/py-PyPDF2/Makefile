COMMENT=	PDF Python toolkit

# this is the version listed in requirements.txt for odoo-16.0.20230929
MODPY_EGG_VERSION=	2.12.1

# no tests in pypi sdist
GH_ACCOUNT=	py-pdf
GH_PROJECT=	pypdf
GH_TAGNAME=	${MODPY_EGG_VERSION}
DISTNAME=	PyPDF2-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	textproc

HOMEPAGE=	http://mstamy2.github.com/PyPDF2

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	flit_core

FLAVORS=	python3
FLAVOR=		python3

.include <bsd.port.mk>
