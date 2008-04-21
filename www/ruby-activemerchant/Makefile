# $OpenBSD: Makefile,v 1.2 2008/04/21 09:43:36 sturm Exp $

COMMENT=	ruby library for handling credit card processor merchants

DISTNAME=	activemerchant-1.3.2
PKGNAME=	ruby-${DISTNAME}p0
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
RUN_DEPENDS=	::devel/ruby-activesupport \
		::textproc/ruby-builder

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
