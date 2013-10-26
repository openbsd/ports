# $OpenBSD: Makefile,v 1.11 2013/10/26 23:55:38 jeremy Exp $

COMMENT =	lightweight and user friendly HTTP client library for Ruby

DISTNAME =	thin_http-0.1.1
REVISION =	6
CATEGORIES =	www

MAINTAINER =	Clint Pachl <pachl@ecentryx.com>

# Ruby license
PERMIT_PACKAGE_CDROM =   Yes

HOMEPAGE =		http://thinhttp.rubyforge.org/

MODULES =		lang/ruby

CONFIGURE_STYLE = 	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		mail/ruby-mime,${MODRUBY_FLAVOR}

do-test:
	@cd ${WRKBUILD}/test && ${SUDO} ${RUBY} -I../lib -rubygems \
		-e 'ARGV.each { |f| load f unless f == "test_helper.rb"  }' *.rb

.include <bsd.port.mk>
