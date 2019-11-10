# $OpenBSD: Makefile.inc,v 1.5 2019/11/10 10:01:56 kn Exp $

# vex is amd64-only; sync with security/angrop
ONLY_FOR_ARCHS =	amd64

MAINTAINER ?=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Klemens Nanni <kn@openbsd.org>

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

MODPY_EGG_VERSION ?=	8.19.10.30
DISTNAME ?=		${ANGR_PYTHON_MODULE}-${MODPY_EGG_VERSION}
PKGNAME =		${MODPY_PY_PREFIX}${DISTNAME}
.endif
