# $OpenBSD: Makefile,v 1.8 2010/09/23 22:30:26 jeremy Exp $

COMMENT=	Ruby library for mocking and stubbing

DISTNAME=	mocha-0.9.7
PKGNAME=	ruby-${DISTNAME}
REVISION =      0
CATEGORIES=     devel

HOMEPAGE=	http://mocha.rubyforge.org/

# MIT License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=mocha/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/ruby-rake

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

MODRUBY_REGRESS = rake
RAKE_REGRESS_TARGET = test:acceptance test:units

.include <bsd.port.mk>
