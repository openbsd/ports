# $OpenBSD: Makefile,v 1.1.1.1 2008/03/25 00:01:38 jcs Exp $

COMMENT=	ruby library for handling credit card processor merchants

DISTNAME=	activemerchant-1.3.2
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	www

HOMEPAGE=	http://www.activemerchant.org/

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=activemerchant/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-builder-*:textproc/ruby-builder

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
