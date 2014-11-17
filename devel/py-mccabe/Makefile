# $OpenBSD: Makefile,v 1.1.1.1 2014/11/17 14:18:48 benoit Exp $

COMMENT =		McCabe complexity checker for Python

MODPY_EGG_VERSION =	0.2.1
DISTNAME =		mccabe-${MODPY_EGG_VERSION}
PKGNAME =		py-mccabe-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/flintwork/mccabe

MAINTAINER =		Bertrand Janin <b@janin.com>

# MIT 
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=m/mccabe/}

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

NO_TEST = 		Yes

.include <bsd.port.mk>
