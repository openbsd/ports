# $OpenBSD: Makefile,v 1.9 2019/07/12 20:45:17 sthen Exp $

COMMENT =	simple wrapper for python argparse module

MODPY_EGG_VERSION =	0.26.2
DISTNAME =	argh-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
HOMEPAGE =	http://packages.python.org/argh
REVISION =	1

# GPLv3+
PERMIT_PACKAGE=	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-argcomplete${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

# it needs iocapture
NO_TEST =		Yes

.include <bsd.port.mk>
