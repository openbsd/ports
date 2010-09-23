# $OpenBSD: Makefile,v 1.3 2010/09/23 22:30:30 jeremy Exp $

COMMENT =	simple REST client for Ruby

DISTNAME =	rest-client-1.0.3
PKGNAME =	ruby-${DISTNAME}
REVISION =      0
CATEGORIES =	www

HOMEPAGE =	http://rest-client.heroku.com/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=rest-client/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

MODRUBY_REGRESS =	rake rspec

.include <bsd.port.mk>
