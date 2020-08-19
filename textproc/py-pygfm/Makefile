# $OpenBSD: Makefile,v 1.9 2020/08/19 12:25:13 ajacoutot Exp $

COMMENT =		GitHub Flavored Markdown extension

MODPY_EGG_VERSION =	1.0.0
DISTNAME =		py-gfm-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/py-/py/}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/zopieux/py-gfm

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

# For now py-pygfm is not compatible with py-markdown>=3.0.0
RUN_DEPENDS =		textproc/py-markdown${MODPY_FLAVOR}<3.0.0

post-install:
	rm ${PREFIX}/LICENSE

.include <bsd.port.mk>
