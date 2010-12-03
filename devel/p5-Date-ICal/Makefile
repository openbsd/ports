# $OpenBSD: Makefile,v 1.8 2010/12/03 11:44:29 ajacoutot Exp $

COMMENT=	Perl Extensions for ICal objects

MODULES=	cpan
DISTNAME=	Date-ICal-1.72
REVISION=	2
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Date-Leapyear 

.include <bsd.port.mk>
