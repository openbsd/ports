# $OpenBSD: Makefile,v 1.20 2009/04/04 10:18:42 bernd Exp $

COMMENT=	object relation model implementation for ruby

DISTNAME=	activerecord-2.3.2
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
RUN_DEPENDS= 	:ruby-activesupport->=2.3.2:devel/ruby-activesupport

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
