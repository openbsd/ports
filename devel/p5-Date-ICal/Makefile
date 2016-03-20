# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:18 naddy Exp $

COMMENT=	Perl Extensions for ICal objects

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Date-ICal-2.678
CATEGORIES=	devel

MAINTAINER=	Sam Smith <S@msmith.net>

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Date-Leapyear 

.include <bsd.port.mk>
