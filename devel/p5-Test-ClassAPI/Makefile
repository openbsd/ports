# $OpenBSD: Makefile,v 1.9 2014/03/24 08:36:49 jasper Exp $

COMMENT=	basic first-pass API testing for large class trees

MODULES=	cpan

DISTNAME=	Test-ClassAPI-1.06
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-Config-Tiny \
		devel/p5-Params-Util
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=modinst

.include <bsd.port.mk>
