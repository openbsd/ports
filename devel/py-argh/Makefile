# $OpenBSD: Makefile,v 1.7 2017/01/03 19:19:48 landry Exp $

COMMENT =	simple wrapper for python argparse module

MODPY_EGG_VERSION =	0.26.2
DISTNAME =	argh-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
HOMEPAGE =	http://packages.python.org/argh
REVISION =	0

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-argcomplete${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

# it needs iocapture
NO_TEST =		Yes

.include <bsd.port.mk>
