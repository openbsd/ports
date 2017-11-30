# $OpenBSD: Makefile,v 1.1.1.1 2017/11/30 20:12:49 jasper Exp $

COMMENT =		convert dicts and other data types into XML

MODPY_EGG_VERSION =	1.7.4
DISTNAME = 		dicttoxml-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes

FLAVORS =		python3
FLAVOR ?=

NO_TEST =		Yes

.include <bsd.port.mk>
