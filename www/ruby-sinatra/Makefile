# $OpenBSD: Makefile,v 1.1.1.1 2009/01/28 23:58:34 bernd Exp $

COMMENT =	DSL for quickly creating web-applications in Ruby

DISTNAME =	sinatra-0.9.0.4
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	www

HOMEPAGE =	http://sinatra.github.com/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=sinatra/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:ruby-rack->=0.9.1:www/ruby-rack

PKG_ARCH =		*

.include <bsd.port.mk>
