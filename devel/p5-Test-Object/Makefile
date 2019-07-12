# $OpenBSD: Makefile,v 1.13 2019/07/12 20:45:10 sthen Exp $

COMMENT=	thoroughly testing objects via registered handlers

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-Object-0.08
CATEGORIES=	devel

FIX_EXTRACT_PERMISSIONS=	Yes

# Artistic
PERMIT_PACKAGE=	Yes

MAKE_ENV=	AUTOMATED_TESTING=Yes TEST_POD=Yes

.include <bsd.port.mk>
