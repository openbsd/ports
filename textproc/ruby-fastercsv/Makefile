# $OpenBSD: Makefile,v 1.1.1.1 2007/05/26 21:44:10 jcs Exp $

COMMENT=	"faster ruby CSV library"

DISTNAME=	fastercsv-1.2.0
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	textproc

# gpl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/17268/

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
