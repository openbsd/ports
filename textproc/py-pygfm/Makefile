# $OpenBSD: Makefile,v 1.6 2019/11/23 23:26:34 kmos Exp $

COMMENT =		GitHub Flavored Markdown extension

MODPY_EGG_VERSION =	0.1.4
DISTNAME =		py-gfm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/py-/py/}
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/zopieux/py-gfm

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

# For now py-pygfm is not compatible with py-markdown>=3.0.0
RUN_DEPENDS =		textproc/py-markdown${MODPY_FLAVOR}<3.0.0

.include <bsd.port.mk>
