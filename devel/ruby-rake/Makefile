# $OpenBSD: Makefile,v 1.16 2010/09/28 20:12:17 jeremy Exp $

COMMENT=	ruby make

DISTNAME=	rake-0.8.7
PKGNAME=	ruby-${DISTNAME}
REVISION =      0
CATEGORIES=	devel

# MIT License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

HOMEPAGE=       http://rake.rubyforge.org/

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem format-executable

PKG_ARCH=	*

REGRESS_DEPENDS=:${PKGNAME}:devel/ruby-rake \
		::devel/ruby-rcov \
		::devel/ruby-flexmock
MODRUBY_REGRESS=rake
RAKE_REGRESS_TARGET=test_all

.include <bsd.port.mk>
