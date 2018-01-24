# $OpenBSD: Makefile,v 1.1.1.1 2018/01/24 18:06:34 jasper Exp $

COMMENT =		filesystem events monitoring

MODPY_EGG_VERSION =	0.9.6
DISTNAME =		pyinotify-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/seb-m/pyinotify

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread ${MODPY_WANTLIB} lib/inotify/inotify

LIB_DEPENDS =		devel/libinotify

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py ${WRKSRC}/python*/pyinotify.py

.include <bsd.port.mk>
