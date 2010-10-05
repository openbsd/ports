# $OpenBSD: Makefile,v 1.8 2010/10/05 19:25:08 jasper Exp $

COMMENT =	DSL for quickly creating web-applications in Ruby

DISTNAME =	sinatra-1.0
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	www

HOMEPAGE =	http://www.sinatrarb.com/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::devel/ruby-tilt \
			:ruby-rack->=0.9.1:www/ruby-rack

PKG_ARCH =		*

MODRUBY_REGRESS =	rake

REGRESS_DEPENDS =	::textproc/ruby-haml \
			::textproc/ruby-builder \
			::devel/ruby-rack-test

.include <bsd.port.mk>
