# $OpenBSD: Makefile,v 1.4 2009/08/25 21:47:59 bernd Exp $

COMMENT =	replacement for Ruby's URI implementation

# databases/ruby-datamapper/core (0.9.11) needs 2.0.2
# test before you update!
DISTNAME = 	addressable-2.0.2
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	www

HOMEPAGE =	http://addressable.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=addressable/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

REGRESS_DEPENDS =	::devel/ruby-rcov

MODRUBY_REGRESS =	rake rspec

.include <bsd.port.mk>
