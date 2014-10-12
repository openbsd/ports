# $OpenBSD: Makefile,v 1.1.1.1 2014/10/12 20:45:56 juanfra Exp $

COMMENT =		high performance, concurrent HTTP client library

MODPY_EGG_VERSION =	1.1.0
DISTNAME =		py-geventhttpclient-${MODPY_EGG_VERSION}
CATEGORIES =		net devel

HOMEPAGE =		https://github.com/gwik/geventhttpclient

MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread ${MODPY_WANTLIB}

GH_ACCOUNT =		gwik
GH_PROJECT =		geventhttpclient
GH_TAGNAME =		v${MODPY_EGG_VERSION}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		devel/py-backports-ssl-match-hostname \
			devel/py-gevent \
			devel/py-certifi
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test

.include <bsd.port.mk>
