# $OpenBSD: Makefile,v 1.3 2010/09/28 20:12:19 jeremy Exp $

COMMENT =	lightweight and user friendly HTTP client library for Ruby

DISTNAME =	thin_http-0.1.1
PKGNAME =	ruby-${DISTNAME}
REVISION =	0
CATEGORIES =	www

MAINTAINER =	Clint Pachl <pachl@ecentryx.com>

# Ruby license
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

HOMEPAGE =		http://thinhttp.rubyforge.org/

MODULES =		lang/ruby

CONFIGURE_STYLE = 	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::mail/ruby-mime

PKG_ARCH =		*

do-regress:
	@cd ${WRKBUILD}/test && ${SUDO} ${RUBY} -I../lib -rubygems \
		-e 'ARGV.each { |f| load f unless f == "test_helper.rb"  }' *.rb

.include <bsd.port.mk>
