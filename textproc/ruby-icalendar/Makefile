# $OpenBSD: Makefile,v 1.18 2014/07/08 15:58:00 jasper Exp $

COMMENT=		iCalendar support for Ruby

DISTNAME=		icalendar-2.1.0
CATEGORIES=		textproc

HOMEPAGE=		https://github.com/icalendar/icalendar

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

# needs ruby-simplecov (not ported yet)
#MODRUBY_TEST=		rspec2
NO_TEST=		Yes

.include <bsd.port.mk>
