# $OpenBSD: Makefile,v 1.1.1.1 2006/10/20 17:16:41 bernd Exp $

COMMENT=	"wrap existing Ruby scripts to be run as a daemon"

DISTNAME=	daemons-1.0.2
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/13607/

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
