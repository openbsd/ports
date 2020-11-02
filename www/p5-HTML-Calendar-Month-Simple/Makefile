# $OpenBSD: Makefile,v 1.16 2020/11/02 21:40:38 benoit Exp $

COMMENT=	Simple HTML Calendars

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTML-CalendarMonthSimple-1.26
CATEGORIES=	www
FIX_EXTRACT_PERMISSIONS=Yes

# Same as Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Date-Calc \
		devel/p5-Date-Simple
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
