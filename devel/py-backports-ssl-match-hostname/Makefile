# $OpenBSD: Makefile,v 1.4 2016/01/07 21:37:48 jasper Exp $

COMMENT =		ssl.match_hostname() function from Python 3.4

MODPY_EGG_VERSION =	3.4.0.2
DISTNAME =		backports.ssl_match_hostname-${MODPY_EGG_VERSION}
PKGNAME =		py-backports-ssl-match-hostname-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		0

# Python Software Foundation License
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

# This comes built in with python-3.2 and above. Since all our
# Python 3 ports are newer than 3.2, we can just do this:
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
