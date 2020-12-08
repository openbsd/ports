# $OpenBSD: Makefile,v 1.7 2020/12/08 08:11:34 sthen Exp $

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
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

# tests aren't included in the pypi distfiles
NO_TEST =		Yes

.include <bsd.port.mk>
