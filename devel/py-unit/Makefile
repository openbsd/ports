# $OpenBSD: Makefile,v 1.22 2011/06/08 17:39:26 jasper Exp $

COMMENT=		unit testing framework for Python

VERSION=		1.4.1
DISTNAME=		pyunit-${VERSION}
PKGNAME=		py-unit-${VERSION}
REVISION =		4
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

.if !${FLAVOR:L:Mno_x11}
BUILD_DEPENDS=	${MODPY_TKINTER_DEPENDS}
RUN_DEPENDS=	${MODPY_TKINTER_DEPENDS}
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
