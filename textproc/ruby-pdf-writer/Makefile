# $OpenBSD: Makefile,v 1.5 2009/02/03 12:36:20 pirofti Exp $

COMMENT=	ruby extension for working with PDF documents

DISTNAME=	pdf-writer-1.1.8
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	textproc

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=ruby-pdf/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-transaction-simple-1.4.0:devel/ruby-transaction-simple \
		:ruby-color-1.4.0:graphics/ruby-color

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
