# $OpenBSD: Makefile,v 1.1.1.1 2007/05/29 04:32:17 jcs Exp $

COMMENT=	"ruby extension for working with PDF documents"

DISTNAME=	pdf-writer-1.1.3
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	textproc

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/5993/

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-color-tools-1.3.0:devel/ruby-color-tools \
		:ruby-transaction-simple-1.4.0:devel/ruby-transaction-simple

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
