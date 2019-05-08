# $OpenBSD: Makefile,v 1.13 2019/05/08 15:44:46 danj Exp $

COMMENT=	Simple HTML Calendars

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-CalendarMonthSimple-1.25
REVISION=	2
CATEGORIES=	www
FIX_EXTRACT_PERMISSIONS=Yes

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Date-Calc \
		devel/p5-Date-Simple
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
