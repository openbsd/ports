# $OpenBSD: Makefile,v 1.1.1.1 2012/12/12 21:50:40 jeremy Exp $

COMMENT =	embeds the V8 javascript interpreter into ruby

DISTNAME =	therubyracer-0.11.0
CATEGORIES =	devel

HOMEPAGE=	https://github.com/cowboyd/therubyracer

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	pthread stdc++ v8
MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	lang/libv8 \
		devel/ruby-ref,${MODRUBY_FLAVOR}

REGRESS_DEPENDS = ${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_REGRESS_ENV = RUBYOPT='-rubygems -rv8'
MODRUBY_REGRESS = rspec2
MODRUBY_REGRESS_TARGET = spec/{v8,c}/*_spec.rb

.include <bsd.port.mk>
