# $OpenBSD: Makefile,v 1.19 2010/11/24 21:35:14 jeremy Exp $

COMMENT=	ruby make

DISTNAME=	rake-0.8.7
REVISION =	2
CATEGORIES=	devel

# MIT License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

HOMEPAGE=       http://rake.rubyforge.org/

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem format-executable

REGRESS_DEPENDS=${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/ruby-rcov \
		devel/ruby-flexmock
MODRUBY_REGRESS=rake
RAKE_REGRESS_TARGET=test_all

.include <bsd.port.mk>
