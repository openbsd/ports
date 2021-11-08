# $OpenBSD: Makefile,v 1.11 2021/11/08 13:20:52 feinerer Exp $

COMMENT =	PDF parser and analyzer

MODPY_EGG_VERSION =	20211012
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

.include <bsd.port.mk>
