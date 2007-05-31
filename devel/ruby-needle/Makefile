# $OpenBSD: Makefile,v 1.1.1.1 2007/05/31 03:40:57 jcs Exp $

COMMENT=	"dependency-injection/inversion-of-control container for Ruby"

DISTNAME=	needle-1.3.0
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# bsd/ruby
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/7842/

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
