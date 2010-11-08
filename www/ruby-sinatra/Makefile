# $OpenBSD: Makefile,v 1.9 2010/11/08 23:28:56 jeremy Exp $

COMMENT =	DSL for quickly creating web-applications in Ruby

DISTNAME =	sinatra-1.0
REVISION =	0
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
RUN_DEPENDS =		:${MODRUBY_PKG_PREFIX}-tilt-*:devel/ruby-tilt,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-rack->=1.0.0:www/ruby-rack,${FLAVOR}

MODRUBY_REGRESS =	rake

REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-haml-*:textproc/ruby-haml,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-builder-*:textproc/ruby-builder,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-rack-test-*:devel/ruby-rack-test,${FLAVOR}

.include <bsd.port.mk>
