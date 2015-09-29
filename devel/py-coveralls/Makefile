# $OpenBSD: Makefile,v 1.4 2015/09/29 10:51:53 sthen Exp $

COMMENT =	display coverage stats online via coveralls.io

MODPY_EGG_VERSION = 0.5
DISTNAME =	coveralls-${MODPY_EGG_VERSION}
EXTRACT_SUFX=	.zip
PKGNAME =	py-${DISTNAME}
CATEGORIES =	devel
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>
REVISION =	0

HOMEPAGE =	http://github.com/coagulant/coveralls-python

# MIT
PERMIT_PACKAGE_CDROM =  Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

.include <bsd.port.mk>
