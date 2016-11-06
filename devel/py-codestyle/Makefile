# $OpenBSD: Makefile,v 1.2 2016/11/06 07:31:09 shadchin Exp $

COMMENT =		python style guide checker

MODPY_EGG_VERSION =	2.1.0
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
