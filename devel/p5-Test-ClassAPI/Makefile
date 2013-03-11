# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:22 espie Exp $

COMMENT=	basic first-pass API testing for large class trees

MODULES=	cpan

DISTNAME=	Test-ClassAPI-1.06
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-Config-Tiny
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=modinst

.include <bsd.port.mk>
