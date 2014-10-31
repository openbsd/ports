# $OpenBSD: Makefile,v 1.1.1.1 2014/10/31 12:00:03 landry Exp $

COMMENT =	display coverage stats online via coveralls.io

MODPY_EGG_VERSION = 0.4.4
DISTNAME =	coveralls-${MODPY_EGG_VERSION}
EXTRACT_SUFX=	.zip
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

HOMEPAGE =	http://github.com/coagulant/coveralls-python

# MIT
PERMIT_PACKAGE_CDROM =  Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=c/coveralls/}

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

.include <bsd.port.mk>
