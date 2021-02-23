# $OpenBSD: Makefile,v 1.8 2021/02/23 19:39:45 sthen Exp $

COMMENT =	PDF parser and analyzer

MODPY_EGG_VERSION =	20201018
DISTNAME =		pdfminer.six-${MODPY_EGG_VERSION}
PKGNAME =		py-pdfminer-${MODPY_EGG_VERSION}

CATEGORIES =	textproc

HOMEPAGE =	https://pdfminersix.readthedocs.io/

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

# tests aren't included in the pypi distfiles
NO_TEST =		Yes

.include <bsd.port.mk>
