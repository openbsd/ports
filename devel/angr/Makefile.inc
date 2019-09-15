# $OpenBSD: Makefile.inc,v 1.2 2019/09/15 13:29:50 kn Exp $

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

MODPY_EGG_VERSION ?=	8.19.7.25
DISTNAME ?=		${ANGR_PYTHON_MODULE}-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
.endif
