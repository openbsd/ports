# $OpenBSD: Makefile,v 1.12 2019/07/12 20:49:50 sthen Exp $

COMMENT=	fast process spawning

DISTNAME=	posix-spawn-0.3.13
REVISION =	0

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/rtomayko/posix-spawn

# MIT / LGPL
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem ext

MODRUBY_TEST=	rake
TEST_DEPENDS=	devel/ruby-rake-compiler,${MODRUBY_FLAVOR}

pre-configure:
	perl -pi -e 's,"ruby","${RUBY}",,g' ${WRKSRC}/test/test_spawn.rb

.include <bsd.port.mk>
