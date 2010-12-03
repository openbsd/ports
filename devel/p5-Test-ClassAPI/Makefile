# $OpenBSD: Makefile,v 1.6 2010/12/03 11:44:36 ajacoutot Exp $

COMMENT=	basic first-pass API testing for large class trees

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	Test-ClassAPI-1.02
REVISION=	1
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-Config-Tiny
BUILD_DEPENDS=	${RUN_DEPENDS}


.include <bsd.port.mk>
