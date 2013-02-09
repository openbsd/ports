# $OpenBSD: Makefile,v 1.24 2013/02/09 14:49:51 sthen Exp $

COMMENT=		unit testing framework for Python

VERSION=		1.4.1
DISTNAME=		pyunit-${VERSION}
PKGNAME=		py-unit-${VERSION}
REVISION =		5
CATEGORIES=     	devel

HOMEPAGE=		http://pyunit.sourceforge.net/

# Python License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pyunit/}

FLAVORS=		no_x11
FLAVOR?=

MODULES=	lang/python

.if !${FLAVOR:Mno_x11}
BUILD_DEPENDS=	${MODPY_TKINTER_DEPENDS}
RUN_DEPENDS=	${MODPY_TKINTER_DEPENDS}
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
