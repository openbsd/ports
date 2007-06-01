# $OpenBSD: Makefile,v 1.2 2007/06/01 16:24:48 jcs Exp $

COMMENT=	"ruby extension for working with PDF documents"

DISTNAME=	pdf-writer-1.1.3
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
RUN_DEPENDS=	:ruby-color-tools-1.3.0:devel/ruby-color-tools \
		:ruby-transaction-simple-1.4.0:devel/ruby-transaction-simple

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
