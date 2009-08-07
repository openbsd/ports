# $OpenBSD: Makefile,v 1.8 2009/08/07 08:36:52 fgsch Exp $

COMMENT=	object interface infrastructure from Zope 3

MODPY_EGG_VERSION=	3.5.1

DISTNAME=	zope.interface-${MODPY_EGG_VERSION}
PKGNAME=	py-zopeinterface-${MODPY_EGG_VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://pypi.python.org/pypi/zope.interface

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# Zope Public License
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=z/zope.interface/}

MODULES=	lang/python

MODPY_SETUPTOOLS=	Yes

REGRESS_DEPENDS=	:py-zopetesting-*:devel/py-zopetesting

do-regress:
	cd ${WRKSRC} && \
		${MODPY_BIN} bootstrap.py && \
		./bin/buildout && \
		./bin/test

.include <bsd.port.mk>
