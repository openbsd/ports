# $OpenBSD: Makefile,v 1.2 2006/11/24 10:09:50 bernd Exp $

COMMENT=	"wrap existing Ruby scripts to be run as a daemon"

DISTNAME=	daemons-1.0.3
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/14358/

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
