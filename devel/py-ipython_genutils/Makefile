# $OpenBSD: Makefile,v 1.4 2017/04/23 15:59:57 shadchin Exp $

COMMENT =		IPython vestigial utilities

MODPY_EGG_VERSION =	0.2.0
DISTNAME =		ipython_genutils-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://ipython.org/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && LC_CTYPE=C.UTF-8 \
	    ${LOCALBASE}/bin/nosetests${MODPY_BIN_SUFFIX} --first-package-wins

.include <bsd.port.mk>
