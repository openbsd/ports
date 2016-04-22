# $OpenBSD: Makefile,v 1.5 2016/04/22 11:38:37 shadchin Exp $

COMMENT =		ssl.match_hostname() function from Python 3.5

MODPY_EGG_VERSION =	3.5.0.1
DISTNAME =		backports.ssl_match_hostname-${MODPY_EGG_VERSION}
PKGNAME =		py-backports-ssl-match-hostname-${MODPY_EGG_VERSION}
CATEGORIES =		devel

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# Python Software Foundation License
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

# This comes built in with python-3.2 and above. Since all our
# Python 3 ports are newer than 3.2, we can just do this:
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}

.include <bsd.port.mk>
