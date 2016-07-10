# $OpenBSD: Makefile,v 1.5 2016/07/10 20:38:39 czarkoff Exp $

COMMENT =		high performance, concurrent HTTP client library

MODPY_EGG_VERSION =	1.3.0
DISTNAME =		geventhttpclient-${MODPY_EGG_VERSION}
PKGNAME =		${MODPY_PY_PREFIX}${DISTNAME}
CATEGORIES =		net devel

HOMEPAGE =		https://github.com/gwik/geventhttpclient

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		devel/py-backports-ssl-match-hostname \
			devel/py-gevent \
			devel/py-certifi \
			devel/py-six

NO_TEST =		Yes

.include <bsd.port.mk>
