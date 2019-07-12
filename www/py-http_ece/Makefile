# $OpenBSD: Makefile,v 1.4 2019/07/12 20:51:01 sthen Exp $

MODPY_EGG_VERSION =	1.1.0
COMMENT =		encrypted Content Encoding for HTTP
DISTNAME =		http_ece-${MODPY_EGG_VERSION}
PKGNAME =		py-http_ece-${MODPY_EGG_VERSION}
CATEGORIES =		www
REVISION =		0

HOMEPAGE =		https://github.com/martinthomson/encrypted-content-encoding
MAINTAINER =		Pamela Mosiejczuk <pamela@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		security/py-cryptography${MODPY_FLAVOR}

NO_TEST=		Yes

.include <bsd.port.mk>
