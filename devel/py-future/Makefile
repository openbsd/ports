# $OpenBSD: Makefile,v 1.5 2020/07/03 21:12:44 sthen Exp $

COMMENT =	compatibility layer between Python 2 and Python 3

MODPY_EGG_VERSION =	0.16.0
DISTNAME =	future-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	2

CATEGORIES =	devel
HOMEPAGE =	http://python-future.org/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

post-install:
	for i in ${PREFIX}/bin/*; do \
		mv $${i} $${i}${MODPY_BIN_SUFFIX} ;\
	done

.include <bsd.port.mk>
