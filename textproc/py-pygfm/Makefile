# $OpenBSD: Makefile,v 1.2 2018/10/21 12:09:04 jasper Exp $

COMMENT =		GitHub Flavored Markdown extension

MODPY_EGG_VERSION =	0.1.4
DISTNAME =		py-gfm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/py-/py/}

CATEGORIES =		textproc

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		textproc/py-markdown${MODPY_FLAVOR}

.include <bsd.port.mk>
