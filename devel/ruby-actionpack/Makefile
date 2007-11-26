# $OpenBSD: Makefile,v 1.12 2007/11/26 18:15:57 bernd Exp $

COMMENT=	eases web-request routing, handling, and response

DISTNAME=       actionpack-1.13.6
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=     devel

# MIT License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   ${MASTER_SITE_RUBYFORGE:=actionpack/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-activesupport->=1.4.4:devel/ruby-activesupport

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
