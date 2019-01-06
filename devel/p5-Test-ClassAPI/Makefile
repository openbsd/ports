# $OpenBSD: Makefile,v 1.11 2019/01/06 23:27:08 afresh1 Exp $

COMMENT=	basic first-pass API testing for large class trees

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-ClassAPI-1.07
CATEGORIES=	devel

FIX_EXTRACT_PERMISSIONS=	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-Config-Tiny \
		devel/p5-Params-Util
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
