# $OpenBSD: Makefile,v 1.12 2019/07/12 20:45:09 sthen Exp $

COMMENT=	basic first-pass API testing for large class trees

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-ClassAPI-1.07
CATEGORIES=	devel

FIX_EXTRACT_PERMISSIONS=	Yes

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-Config-Tiny \
		devel/p5-Params-Util
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
