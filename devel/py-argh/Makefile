# $OpenBSD: Makefile,v 1.2 2013/08/10 14:01:45 landry Exp $

COMMENT =	simple wrapper for python argparse module

MODPY_EGG_VERSION =	0.21.2
DISTNAME =	argh-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
HOMEPAGE =	http://packages.python.org/argh

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=a/argh/}

MODULES =	lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =	devel/py-argcomplete

.include <bsd.port.mk>
