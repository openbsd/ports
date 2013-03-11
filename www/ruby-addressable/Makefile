# $OpenBSD: Makefile,v 1.16 2013/03/11 11:44:49 espie Exp $

COMMENT =	replacement for Ruby's URI implementation

# test databases/ruby-datamapper/core before updating
DISTNAME = 	addressable-2.2.2
REVISION = 	2
CATEGORIES =	www

HOMEPAGE =	http://addressable.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =	rake rspec

.include <bsd.port.mk>
