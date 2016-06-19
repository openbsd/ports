# $OpenBSD: Makefile,v 1.6 2016/06/19 12:31:31 shadchin Exp $

COMMENT =		ssl.match_hostname() function from Python 3.5

MODPY_EGG_VERSION =	3.5.0.1
DISTNAME =		backports.ssl_match_hostname-${MODPY_EGG_VERSION}
PKGNAME =		py-backports-ssl-match-hostname-${MODPY_EGG_VERSION}
CATEGORIES =		devel
REVISION =		0

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# Python Software Foundation License
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-backports

.include <bsd.port.mk>
