# $OpenBSD: Makefile,v 1.1.1.1 2007/05/29 04:25:59 jcs Exp $

COMMENT=	"generic active transaction support for ruby objects"

DISTNAME=	transaction-simple-1.4.0
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/17139/

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-hoe-1.2.1:devel/ruby-hoe

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
