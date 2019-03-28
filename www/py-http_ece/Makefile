# $OpenBSD: Makefile,v 1.2 2019/03/28 17:49:58 pamela Exp $

MODPY_EGG_VERSION =	1.1.0
COMMENT =		encrypted Content Encoding for HTTP
DISTNAME =		http_ece-${MODPY_EGG_VERSION}
PKGNAME =		py-http_ece-${MODPY_EGG_VERSION}
CATEGORIES =		www

HOMEPAGE =		https://github.com/martinthomson/encrypted-content-encoding
MAINTAINER =		Pamela Mosiejczuk <pamela@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		security/py-cryptography${MODPY_FLAVOR}

NO_TEST=		Yes

.include <bsd.port.mk>
