# $OpenBSD: Makefile,v 1.14 2020/07/03 21:45:15 sthen Exp $

COMMENT=	thoroughly testing objects via registered handlers

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-Object-0.08
CATEGORIES=	devel
REVISION=	0

FIX_EXTRACT_PERMISSIONS=	Yes

# Artistic
PERMIT_PACKAGE=	Yes

MAKE_ENV=	AUTOMATED_TESTING=Yes TEST_POD=Yes

.include <bsd.port.mk>
