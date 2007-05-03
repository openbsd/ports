# $OpenBSD: Makefile,v 1.6 2007/05/03 11:28:48 msf Exp $

COMMENT=	"eases web-request routing, handling, and response"

DISTNAME=       actionpack-1.12.5
PKGNAME=	ruby-${DISTNAME}p2
CATEGORIES=     devel

# MIT License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   http://rubyforge.org/frs/download.php/12313/

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-activesupport-1.3.1:devel/ruby-activesupport

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
