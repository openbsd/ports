# $OpenBSD: Makefile,v 1.4 2014/01/11 22:51:02 jeremy Exp $

COMMENT =	embeds the V8 javascript interpreter into ruby

DISTNAME =	therubyracer-0.11.0
REVISION =	1
CATEGORIES =	devel

HOMEPAGE=	https://github.com/cowboyd/therubyracer

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	pthread stdc++ v8
MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	lang/libv8 \
		devel/ruby-ref,${MODRUBY_FLAVOR}

TEST_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST_ENV = RUBYOPT='-rubygems -rv8'
MODRUBY_TEST = rspec2
MODRUBY_TEST_TARGET = spec/{v8,c}/*_spec.rb

.include <bsd.port.mk>
