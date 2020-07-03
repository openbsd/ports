# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:48 sthen Exp $

COMMENT =		filesystem events monitoring

MODPY_EGG_VERSION =	0.9.6
DISTNAME =		pyinotify-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		devel

HOMEPAGE =		https://github.com/seb-m/pyinotify

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread ${MODPY_WANTLIB} lib/inotify/inotify

LIB_DEPENDS =		devel/libinotify

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py ${WRKSRC}/python*/pyinotify.py

# No tests upstream

.include <bsd.port.mk>
