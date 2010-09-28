# $OpenBSD: Makefile,v 1.7 2010/09/28 20:12:19 jeremy Exp $

COMMENT =	replacement for Ruby's URI implementation

# databases/ruby-datamapper/core (0.9.11) needs 2.0.2
# test before you update!
DISTNAME = 	addressable-2.1.0
PKGNAME =	ruby-${DISTNAME}
REVISION =	0
CATEGORIES =	www

HOMEPAGE =	http://addressable.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

REGRESS_DEPENDS =	::devel/ruby-rcov

MODRUBY_REGRESS =	rake rspec

.include <bsd.port.mk>
