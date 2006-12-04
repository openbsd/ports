# $OpenBSD: Makefile,v 1.1.1.1 2006/12/04 09:54:10 msf Exp $

COMMENT=	"basic first-pass API testing for large class trees"

MODULES=	cpan

DISTNAME=	Test-ClassAPI-1.02
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Inspector \
		::devel/p5-Config-Tiny
BUILD_DEPENDS=	${RUN_DEPENDS}


.include <bsd.port.mk>
