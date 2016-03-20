# $OpenBSD: Makefile,v 1.11 2016/03/20 19:57:17 naddy Exp $

COMMENT=	Simple HTML Calendars

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-CalendarMonthSimple-1.25
REVISION=	1
CATEGORIES=	www

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Date-Calc \
		devel/p5-Date-Simple
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
