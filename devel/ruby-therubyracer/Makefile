# $OpenBSD: Makefile,v 1.9 2017/04/10 11:45:27 sthen Exp $

BROKEN =	port is holding back updates to lang/libv8

COMMENT =	embeds the V8 javascript interpreter into ruby

DISTNAME =	therubyracer-0.11.0
REVISION =	3
CATEGORIES =	devel

HOMEPAGE=	https://github.com/cowboyd/therubyracer

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	pthread ${LIBCXX} v8
MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	lang/libv8 \
		devel/ruby-ref,${MODRUBY_FLAVOR}

#TEST_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}
#MODRUBY_TEST_ENV = RUBYOPT='-rubygems -rv8'
#MODRUBY_TEST =	rspec2
#MODRUBY_TEST_TARGET = spec/{v8,c}/*_spec.rb

.include <bsd.port.mk>
