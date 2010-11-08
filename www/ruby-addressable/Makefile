# $OpenBSD: Makefile,v 1.8 2010/11/08 23:28:55 jeremy Exp $

COMMENT =	replacement for Ruby's URI implementation

# test databases/ruby-datamapper/core before updating
DISTNAME = 	addressable-2.1.0
REVISION =	1
CATEGORIES =	www

HOMEPAGE =	http://addressable.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-rcov-*:devel/ruby-rcov,${FLAVOR}

MODRUBY_REGRESS =	rake rspec

.include <bsd.port.mk>
