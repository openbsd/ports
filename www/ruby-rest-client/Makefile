# $OpenBSD: Makefile,v 1.8 2011/09/16 12:00:09 espie Exp $

COMMENT =	simple REST client for Ruby

DISTNAME =	rest-client-1.0.3
REVISION =	4
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
