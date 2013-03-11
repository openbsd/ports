# $OpenBSD: Makefile,v 1.9 2013/03/11 10:50:15 espie Exp $

COMMENT=	Perl Extensions for ICal objects

MODULES=	cpan
DISTNAME=	Date-ICal-1.72
REVISION=	2
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Date-Leapyear 

.include <bsd.port.mk>
