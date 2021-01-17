# $OpenBSD: Makefile.inc,v 1.10 2021/01/17 19:50:44 jasper Exp $

# vex is amd64-only; sync with security/angrop
ONLY_FOR_ARCHS =	amd64

MAINTAINER ?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

CATEGORIES =		devel security

# z3-solver: MIT
# vex: (L)GPL2
# rest: BSD
PERMIT_PACKAGE ?=	Yes

.if defined(ANGR_PYTHON_MODULE)
HOMEPAGE ?=		https://github.com/angr/${ANGR_PYTHON_MODULE}/

MODULES ?=		lang/python
MODPY_PI ?=		Yes
MODPY_SETUPTOOLS ?=	Yes
MODPY_VERSION ?=	${MODPY_DEFAULT_VERSION_3}

MODPY_EGG_VERSION ?=	9.0.5405
DISTNAME ?=		${ANGR_PYTHON_MODULE}-${MODPY_EGG_VERSION}
PKGNAME =		${MODPY_PY_PREFIX}${DISTNAME}
.endif
