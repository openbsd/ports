# $OpenBSD: Makefile,v 1.1.1.1 2018/01/23 18:22:23 jasper Exp $

COMMENT =		datetime-iterator for cron-like formats

MODPY_EGG_VERSION =	0.3.20
DISTNAME =		croniter-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-dateutil${MODPY_FLAVOR}

.include <bsd.port.mk>
