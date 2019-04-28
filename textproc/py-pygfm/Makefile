# $OpenBSD: Makefile,v 1.4 2019/04/28 20:51:57 sthen Exp $

COMMENT =		GitHub Flavored Markdown extension

MODPY_EGG_VERSION =	0.1.4
DISTNAME =		py-gfm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/py-/py/}
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/zopieux/py-gfm

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

# For now py-pygfm is not compatible with py-markdown>=3.0.0
RUN_DEPENDS =		textproc/py-markdown${MODPY_FLAVOR}<3.0.0

.include <bsd.port.mk>
