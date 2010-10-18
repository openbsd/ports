# $OpenBSD: Makefile,v 1.4 2010/10/18 17:48:07 espie Exp $

COMMENT=	basic first-pass API testing for large class trees

MODULES=	cpan
USE_GROFF =	Yes

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
