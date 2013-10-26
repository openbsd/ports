# $OpenBSD: Makefile,v 1.18 2013/10/26 23:55:35 jeremy Exp $

COMMENT=	optimized replacement for Ruby thread.rb primitives

DISTNAME=	fastthread-1.0.7
REVISION=	8
CATEGORIES=	devel

# Ruby's license
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem ext

TEST_DEPENDS=${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST=ruby
MODRUBY_TEST_TARGET=-rubygems test/test_all.rb

FLAVOR?=

.if ${FLAVOR:Mruby18}
FASTTHREAD_EXT=	.so
.else
FASTTHREAD_EXT=	.rb
.endif

SUBST_VARS=	FASTTHREAD_EXT

post-install:
	touch ${GEM_ABS_PATH}/gems/fastthread-1.0.7/ext/fastthread/fastthread.{,s}o

.include <bsd.port.mk>
