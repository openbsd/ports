# $OpenBSD: Makefile,v 1.7 2011/04/21 06:56:37 jasper Exp $

COMMENT=	basic first-pass API testing for large class trees

MODULES=	cpan

DISTNAME=	Test-ClassAPI-1.06
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-Config-Tiny
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=modinst

.include <bsd.port.mk>
