MODPY_DISTV?=	${VERSION}
CONTRIB?=	${.CURDIR:T}
DISTNAME?=	sphinxcontrib_${CONTRIB}-${MODPY_DISTV}
PKGNAME?=	py-${DISTNAME:S/sphinxcontrib_/sphinxcontrib-/}

CATEGORIES?=	textproc

HOMEPAGE?=	https://sphinx-doc.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD?=	flit_core
MODPY_PI=	Yes
