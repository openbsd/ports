# $OpenBSD: Makefile,v 1.21 2009/08/20 22:57:03 bernd Exp $

COMMENT=	object relation model implementation for ruby

DISTNAME=	activerecord-2.3.3
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	databases

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=activerecord/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS= 	:ruby-activesupport->=2.3.3:devel/ruby-activesupport

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
