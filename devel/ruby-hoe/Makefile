# $OpenBSD: Makefile,v 1.5 2008/04/01 22:16:05 bernd Exp $

COMMENT=	simple rake/rubygems helper for project Rakefiles

DISTNAME=	hoe-1.5.1
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=seattlerb/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/ruby-rubyforge \
		:ruby-rake->=0.7.2:devel/ruby-rake

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
