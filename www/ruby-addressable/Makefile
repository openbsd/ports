# $OpenBSD: Makefile,v 1.5 2009/10/12 22:43:55 pirofti Exp $

COMMENT =	replacement for Ruby's URI implementation

# databases/ruby-datamapper/core (0.9.11) needs 2.0.2
# test before you update!
DISTNAME = 	addressable-2.1.0
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
