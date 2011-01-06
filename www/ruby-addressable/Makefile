# $OpenBSD: Makefile,v 1.12 2011/01/06 04:24:25 jeremy Exp $

COMMENT =	replacement for Ruby's URI implementation

# test databases/ruby-datamapper/core before updating
DISTNAME = 	addressable-2.2.2
REVISION = 	0
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
