# $OpenBSD: Makefile,v 1.12 2010/09/28 20:12:17 jeremy Exp $

COMMENT=	simple rake/rubygems helper for project Rakefiles

DISTNAME=	hoe-2.3.3
PKGNAME=	ruby-${DISTNAME}
REVISION =      1
CATEGORIES=	devel

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-rubyforge->=1.0.4:devel/ruby-rubyforge \
		:ruby-rake->=0.8.7:devel/ruby-rake

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
