# $OpenBSD: Makefile,v 1.12 2022/02/22 04:22:23 bket Exp $

COMMENT =	PDF parser and analyzer

MODPY_EGG_VERSION =	20211012
REVISION =		0
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

RUN_DEPENDS =		security/py-cryptography${MODPY_FLAVOR} \
			textproc/py-chardet${MODPY_FLAVOR}

# tests aren't included in the pypi distfiles
NO_TEST =		Yes

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
