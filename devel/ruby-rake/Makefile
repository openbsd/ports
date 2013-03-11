# $OpenBSD: Makefile,v 1.24 2013/03/11 10:50:30 espie Exp $

COMMENT=	ruby make

DISTNAME=	rake-0.9.2.2
REVISION =	0
CATEGORIES=	devel

# MIT License
PERMIT_PACKAGE_CDROM=   Yes

HOMEPAGE=       http://rake.rubyforge.org/

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem
GEM_FLAGS=	--format-executable

# ruby 1.9, jruby, and rubinius all ship with rake, so
# force the ruby18 FLAVOR.
FLAVORS=	ruby18
FLAVOR=		ruby18

TEST_DEPENDS=${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/ruby-rcov \
		devel/ruby-flexmock \
		devel/ruby-minitest
MODRUBY_TEST=rake

.include <bsd.port.mk>
