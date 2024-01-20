# vex contains a limited number of architecture backends
# sync with security/angrop where applicable
ONLY_FOR_ARCHS =	aarch64 amd64

CATEGORIES =		devel security

# z3-solver: MIT
# vex: (L)GPL2
# rest: BSD
PERMIT_PACKAGE ?=	Yes

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

.if defined(ANGR_PYTHON_MODULE)
HOMEPAGE ?=		https://github.com/angr/${ANGR_PYTHON_MODULE}/

MODULES ?=		lang/python
MODPY_PI ?=		Yes
MODPY_PYBUILD ?=	setuptools

# order when updating:
# py-z3-solver
# py-claripy
# py-archinfo
# vex
# py-pyvex
# py-ailment
# py-cle
# py-angr
MODPY_EGG_VERSION ?=	9.2.85
DISTNAME ?=		${ANGR_PYTHON_MODULE}-${MODPY_EGG_VERSION}
PKGNAME =		${MODPY_PY_PREFIX}${DISTNAME}
.endif
