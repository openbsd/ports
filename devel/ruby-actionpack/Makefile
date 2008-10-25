# $OpenBSD: Makefile,v 1.17 2008/10/25 10:39:48 bernd Exp $

COMMENT=	eases web-request routing, handling, and response

DISTNAME=	actionpack-2.1.2
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# MIT License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   ${MASTER_SITE_RUBYFORGE:=actionpack/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-activesupport-2.1.2:devel/ruby-activesupport

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
