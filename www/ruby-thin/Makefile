# $OpenBSD: Makefile,v 1.15 2013/01/09 17:38:52 jeremy Exp $

COMMENT =	fast and very simple Ruby web server

DISTNAME =	thin-1.3.0
REVISION =	1
CATEGORIES =	www

HOMEPAGE =	http://code.macournoyer.com/thin/

# Ruby/GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-rack,${MODRUBY_FLAVOR}>=1.0.0 \
		devel/ruby-daemons,${MODRUBY_FLAVOR}>=1.0.9 \
		net/ruby-eventmachine,${MODRUBY_FLAVOR}>=0.12.6

MODRUBY_REGRESS =	rspec
REGRESS_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_REGRESS_ENV =	RUBYLIB=$$(dirname `${GEM} which thin`) RUBYOPT='-I. -rubygems -rthin'
MODRUBY_REGRESS_TARGET = spec/*_spec.rb

.include <bsd.port.mk>
