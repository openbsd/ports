# $OpenBSD: Makefile,v 1.19 2014/01/15 02:13:58 jeremy Exp $

COMMENT =	fast and very simple Ruby web server

DISTNAME =	thin-1.3.0
REVISION =	4
CATEGORIES =	www

HOMEPAGE =	http://code.macournoyer.com/thin/

# Ruby/GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-rack,${MODRUBY_FLAVOR}>=1.0.0 \
		devel/ruby-daemons,${MODRUBY_FLAVOR}>=1.0.9 \
		net/ruby-eventmachine,${MODRUBY_FLAVOR}>=0.12.6

MODRUBY_TEST =	rspec
TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST_ENV =	RUBYLIB=$$(dirname `${GEM} which thin`) RUBYOPT='-I. -rubygems -rthin'
MODRUBY_TEST_TARGET = spec/*_spec.rb

.include <bsd.port.mk>
