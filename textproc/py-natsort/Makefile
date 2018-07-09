# $OpenBSD: Makefile,v 1.5 2018/07/09 10:35:24 jasper Exp $

COMMENT =		simple yet flexible natural sorting

MODPY_EGG_VERSION =	5.3.3
DISTNAME =		natsort-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

# could also make use of 'fastnumbers'
RUN_DEPENDS =		textproc/py-ICU${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/natsort{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
