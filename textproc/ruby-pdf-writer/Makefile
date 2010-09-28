# $OpenBSD: Makefile,v 1.7 2010/09/28 20:12:18 jeremy Exp $

COMMENT=	ruby extension for working with PDF documents

DISTNAME=	pdf-writer-1.1.8
PKGNAME=	ruby-${DISTNAME}
REVISION =      0
CATEGORIES=	textproc

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-transaction-simple-1.4.0:devel/ruby-transaction-simple \
		:ruby-color-1.4.0:graphics/ruby-color

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
