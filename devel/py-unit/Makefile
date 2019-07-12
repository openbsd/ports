# $OpenBSD: Makefile,v 1.26 2019/07/12 20:45:55 sthen Exp $

COMMENT=		unit testing framework for Python

VERSION=		1.4.1
DISTNAME=		pyunit-${VERSION}
PKGNAME=		py-unit-${VERSION}
REVISION =		5
CATEGORIES=     	devel

HOMEPAGE=		http://pyunit.sourceforge.net/

# Python License
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=pyunit/}

FLAVORS=		no_x11
FLAVOR?=

MODULES=	lang/python

.if !${FLAVOR:Mno_x11}
BUILD_DEPENDS=	${MODPY_TKINTER_DEPENDS}
RUN_DEPENDS=	${MODPY_TKINTER_DEPENDS}
.endif

NO_TEST=	Yes

.include <bsd.port.mk>
