# $OpenBSD: Makefile,v 1.1.1.1 2016/09/30 11:25:59 shadchin Exp $

COMMENT =		python style guide checker

MODPY_EGG_VERSION =	2.0.0
DISTNAME =		pycodestyle-${MODPY_EGG_VERSION}
PKGNAME =		py-codestyle-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/PyCQA/pycodestyle

MAINTAINER=		Alexandr Shadchin <shadchin@openbsd.org>

# Expat
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/pycodestyle ${PREFIX}/bin/pycodestyle${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
