# $OpenBSD: Makefile,v 1.4 2010/04/15 13:56:34 ajacoutot Exp $

COMMENT=	Perl Extensions for ICal objects

MODULES=	cpan
DISTNAME=	Date-ICal-1.72
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	devel

MAINTAINER=	Sam Smith <S@msmith.net>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Date-Leapyear 

.include <bsd.port.mk>
