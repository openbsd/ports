# $OpenBSD: Makefile,v 1.8 2019/07/12 20:45:45 sthen Exp $

COMMENT =		ssl.match_hostname() function from Python 3.5

MODPY_EGG_VERSION =	3.5.0.1
DISTNAME =		backports.ssl_match_hostname-${MODPY_EGG_VERSION}
PKGNAME =		py-backports-ssl-match-hostname-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		1

# Python Software Foundation License
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-backports

.include <bsd.port.mk>
