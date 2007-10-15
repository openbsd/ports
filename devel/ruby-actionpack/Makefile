# $OpenBSD: Makefile,v 1.10 2007/10/15 15:22:22 jcs Exp $

COMMENT=	eases web-request routing, handling, and response

DISTNAME=       actionpack-1.13.5
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
RUN_DEPENDS=	:ruby-activesupport->=1.4.3:devel/ruby-activesupport

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
