# $OpenBSD: Makefile,v 1.9 2016/11/04 21:26:38 jeremy Exp $

COMMENT=	fast process spawning

DISTNAME=	posix-spawn-0.3.11
REVISION =	0

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/rtomayko/posix-spawn

# MIT / LGPL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem ext

MODRUBY_TEST=	rake
TEST_DEPENDS=	devel/ruby-rake-compiler,${MODRUBY_FLAVOR}

pre-configure:
	perl -pi -e 's,"ruby","${RUBY}",,g' ${WRKSRC}/test/test_spawn.rb

.include <bsd.port.mk>
