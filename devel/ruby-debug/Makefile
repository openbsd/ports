# $OpenBSD: Makefile,v 1.1.1.1 2008/02/07 19:56:06 bernd Exp $

COMMENT=	faster implementation of the standard debug.rb

VERSION=	0.10.0
DISTNAME=	ruby-debug-${VERSION}
CATEGORIES=	devel

MAINTAINER=	Paul Irofti <bulibuta@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=ruby-debug/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-debug-base-${VERSION}:devel/ruby-debug-base

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
