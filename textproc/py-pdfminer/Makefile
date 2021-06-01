# $OpenBSD: Makefile,v 1.9 2021/06/01 12:41:32 ajacoutot Exp $

COMMENT =	PDF parser and analyzer

MODPY_EGG_VERSION =	20201018
DISTNAME =		pdfminer.six-${MODPY_EGG_VERSION}
PKGNAME =		py-pdfminer-${MODPY_EGG_VERSION}
REVISION =		0

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
