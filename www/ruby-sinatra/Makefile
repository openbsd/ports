# $OpenBSD: Makefile,v 1.7 2010/09/28 20:12:19 jeremy Exp $

COMMENT =	DSL for quickly creating web-applications in Ruby

DISTNAME =	sinatra-0.9.4
PKGNAME =	ruby-${DISTNAME}
REVISION =	0
CATEGORIES =	www

HOMEPAGE =	http://sinatra.github.com/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:ruby-rack->=0.9.1:www/ruby-rack

PKG_ARCH =		*

MODRUBY_REGRESS =	rake

REGRESS_DEPENDS =	::textproc/ruby-haml \
			::textproc/ruby-builder \
			::devel/ruby-rack-test

.include <bsd.port.mk>
