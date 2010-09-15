# $OpenBSD: Makefile,v 1.3 2010/09/15 13:52:11 sthen Exp $

COMMENT=	basic first-pass API testing for large class trees

MODULES=	cpan

DISTNAME=	Test-ClassAPI-1.02
REVISION=	0
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Inspector \
		::devel/p5-Config-Tiny
BUILD_DEPENDS=	${RUN_DEPENDS}


.include <bsd.port.mk>
