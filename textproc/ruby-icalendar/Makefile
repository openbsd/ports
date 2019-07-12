# $OpenBSD: Makefile,v 1.19 2019/07/12 20:50:14 sthen Exp $

COMMENT=		iCalendar support for Ruby

DISTNAME=		icalendar-2.1.0
CATEGORIES=		textproc

HOMEPAGE=		https://github.com/icalendar/icalendar

# Ruby license
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

# needs ruby-simplecov (not ported yet)
#MODRUBY_TEST=		rspec2
NO_TEST=		Yes

.include <bsd.port.mk>
