MODPY_EGG_VERSION?=	${VERSION}
CONTRIB?=	${.CURDIR:T}
DISTNAME?=	sphinxcontrib_${CONTRIB}-${MODPY_EGG_VERSION}
PKGNAME?=	py-${DISTNAME:S/sphinxcontrib_/sphinxcontrib-/}

CATEGORIES?=	textproc

HOMEPAGE?=	https://sphinx-doc.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
FLAVORS=	python3
FLAVOR=		python3

MODPY_PYBUILD?=	flit_core
