# $OpenBSD: Makefile,v 1.3 2011/09/16 09:24:56 espie Exp $

COMMENT=	extensions to the Python unit testing framework

MODPY_EGG_VERSION= 0.9.8
DISTNAME=	testtools-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION =	1
CATEGORIES=	devel

HOMEPAGE=	http://pypi.python.org/pypi/testtools

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PYPI:=t/testtools/}

MODULES=	lang/python

NO_REGRESS=	Yes

.include <bsd.port.mk>
