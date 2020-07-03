# $OpenBSD: Makefile,v 1.13 2020/07/03 21:45:12 sthen Exp $

COMMENT=	basic first-pass API testing for large class trees

MODULES=	cpan
PKG_ARCH=	*

DISTNAME=	Test-ClassAPI-1.07
CATEGORIES=	devel
REVISION=	0

FIX_EXTRACT_PERMISSIONS=	Yes

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-Config-Tiny \
		devel/p5-Params-Util
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
