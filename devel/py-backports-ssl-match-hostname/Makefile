# $OpenBSD: Makefile,v 1.1.1.1 2014/04/27 16:11:24 edd Exp $

COMMENT =		ssl.match_hostname() function from Python 3.4

MODPY_EGG_VERSION =	3.4.0.2
DISTNAME =		backports.ssl_match_hostname-${MODPY_EGG_VERSION}
PKGNAME =		py-backports-ssl-match-hostname-${MODPY_EGG_VERSION}
CATEGORIES =		devel
HOMEPAGE =	https://pypi.python.org/pypi/backports.ssl_match_hostname

# Python Software Foundation License
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=b/backports.ssl_match_hostname/}

MODULES =		lang/python

# This comes built in with python-3.2 and above. Since all our
# Python 3 ports are newer than 3.2, we can just do this:
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
