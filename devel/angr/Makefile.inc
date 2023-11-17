# vex contains a limited number of architecture backends
# sync with security/angrop where applicable
ONLY_FOR_ARCHS =	aarch64 amd64

CATEGORIES =		devel security

# z3-solver: MIT
# vex: (L)GPL2
# rest: BSD
PERMIT_PACKAGE ?=	Yes

.if defined(ANGR_PYTHON_MODULE)
HOMEPAGE ?=		https://github.com/angr/${ANGR_PYTHON_MODULE}/

MODULES ?=		lang/python
MODPY_PI ?=		Yes
MODPY_PYBUILD ?=	setuptools

MODPY_EGG_VERSION ?=	9.2.76
DISTNAME ?=		${ANGR_PYTHON_MODULE}-${MODPY_EGG_VERSION}
PKGNAME =		${MODPY_PY_PREFIX}${DISTNAME}
.endif
