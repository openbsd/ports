# $OpenBSD: Makefile,v 1.10 2010/11/24 21:35:16 jeremy Exp $

COMMENT =	replacement for Ruby's URI implementation

# test databases/ruby-datamapper/core before updating
DISTNAME = 	addressable-2.1.0
REVISION =	2
CATEGORIES =	www

HOMEPAGE =	http://addressable.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	devel/ruby-rcov,${MODRUBY_FLAVOR}

MODRUBY_REGRESS =	rake rspec

.include <bsd.port.mk>
