# $OpenBSD: Makefile,v 1.12 2019/05/03 11:59:52 cwen Exp $

COMMENT=	thoroughly testing objects via registered handlers

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-Object-0.08
CATEGORIES=	devel

FIX_EXTRACT_PERMISSIONS=	Yes

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV=	AUTOMATED_TESTING=Yes TEST_POD=Yes

.include <bsd.port.mk>
