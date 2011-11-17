# $OpenBSD: Makefile,v 1.22 2011/11/17 16:08:00 jeremy Exp $

COMMENT=	ruby make

DISTNAME=	rake-0.9.2.2
CATEGORIES=	devel

# MIT License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

HOMEPAGE=       http://rake.rubyforge.org/

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem format-executable

# ruby 1.9, jruby, and rubinius all ship with rake, so
# force the empty (ruby 1.8) FLAVOR.
FLAVOR=

REGRESS_DEPENDS=${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/ruby-rcov \
		devel/ruby-flexmock \
		devel/ruby-minitest
MODRUBY_REGRESS=rake

.include <bsd.port.mk>
