# $OpenBSD: Makefile,v 1.7 2011/01/06 04:24:25 jeremy Exp $

COMMENT =	simple REST client for Ruby

DISTNAME =	rest-client-1.0.3
REVISION =	3
CATEGORIES =	www

HOMEPAGE =	http://rest-client.heroku.com/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_REGRESS =	rake rspec

.include <bsd.port.mk>
