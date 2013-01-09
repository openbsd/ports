# $OpenBSD: Makefile,v 1.15 2013/01/09 17:38:52 jeremy Exp $

COMMENT=	optimized replacement for Ruby thread.rb primitives

DISTNAME=	fastthread-1.0.7
REVISION=	7
CATEGORIES=	devel

# Ruby's license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem ext

REGRESS_DEPENDS=${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_REGRESS=ruby
MODRUBY_REGRESS_TARGET=-rubygems test/test_all.rb

FLAVOR?=

.if ${FLAVOR:Mruby19} || empty(FLAVOR)
FASTTHREAD_EXT=	.rb
.else
FASTTHREAD_EXT=	.so
.endif

SUBST_VARS=	FASTTHREAD_EXT

post-install:
	touch ${GEM_ABS_PATH}/gems/fastthread-1.0.7/ext/fastthread/fastthread.{,s}o

.include <bsd.port.mk>
