# $OpenBSD: Makefile,v 1.1.1.1 2016/09/01 11:19:05 shadchin Exp $

COMMENT =		Python utility / library to sort Python imports

MODPY_EGG_VERSION =	4.2.5
DISTNAME =		isort-${MODPY_EGG_VERSION}
PKGNAME =		py-isort-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/timothycrosley/isort

MAINTAINER=		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.if ${FLAVOR:Mpython3}
post-install:
	mv ${PREFIX}/bin/isort ${PREFIX}/bin/isort${MODPY_BIN_SUFFIX}
.endif

.include <bsd.port.mk>
