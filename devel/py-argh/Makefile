# $OpenBSD: Makefile,v 1.3 2015/04/02 14:21:14 jasper Exp $

COMMENT =	simple wrapper for python argparse module

MODPY_EGG_VERSION =	0.21.2
DISTNAME =	argh-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
HOMEPAGE =	http://packages.python.org/argh

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =	devel/py-argcomplete

.include <bsd.port.mk>
