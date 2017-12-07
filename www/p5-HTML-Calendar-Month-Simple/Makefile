# $OpenBSD: Makefile,v 1.12 2017/12/07 13:12:44 espie Exp $

COMMENT=	Simple HTML Calendars

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-CalendarMonthSimple-1.25
REVISION=	1
CATEGORIES=	www
FIX_EXTRACT_PERMISSIONS=Yes

MAINTAINER=	Sam Smith <S@msmith.net>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Date-Calc \
		devel/p5-Date-Simple
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
