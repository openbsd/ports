# $OpenBSD: Makefile,v 1.5 2008/10/27 19:29:16 pirofti Exp $

COMMENT=	faster implementation of the standard debug.rb

VERSION=	0.10.2
DISTNAME=	ruby-debug-${VERSION}
PKGNAME=	${DISTNAME}
CATEGORIES=	devel

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=ruby-debug/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-debug-base-${VERSION}:devel/ruby-debug-base \
		::devel/ruby-columnize

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
