# $OpenBSD: Makefile,v 1.20 2009/03/15 13:03:42 espie Exp $


COMMENT=		unit testing framework for Python

VERSION=		1.4.1
DISTNAME=		pyunit-${VERSION}
PKGNAME=		py-unit-${VERSION}p2
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
