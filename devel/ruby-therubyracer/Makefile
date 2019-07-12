# $OpenBSD: Makefile,v 1.15 2019/07/12 20:46:00 sthen Exp $

COMMENT =	embeds the V8 javascript interpreter into ruby

DISTNAME =	therubyracer-0.12.3
REVISION =	1
CATEGORIES =	devel

HOMEPAGE=	https://github.com/cowboyd/therubyracer

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =	pthread ${COMPILER_LIBCXX} v8
MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-libv8,${MODRUBY_FLAVOR}>=3.16.14.15,<3.16.15 \
		devel/ruby-ref,${MODRUBY_FLAVOR}

TEST_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST_ENV = RUBYOPT='-rubygems -rv8'
MODRUBY_TEST =	rspec3
MODRUBY_TEST_TARGET = spec/{v8,c}/*_spec.rb

.include <bsd.port.mk>
