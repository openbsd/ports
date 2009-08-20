# $OpenBSD: Makefile,v 1.7 2009/08/20 22:02:53 bernd Exp $

COMMENT=	Ruby library for mocking and stubbing

DISTNAME=	mocha-0.9.7
PKGNAME=	ruby-${DISTNAME}
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
