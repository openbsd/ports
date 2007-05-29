# $OpenBSD: Makefile,v 1.1.1.1 2007/05/29 04:24:52 jcs Exp $

COMMENT=	"simple rake/rubygems helper for project Rakefiles"

DISTNAME=	hoe-1.2.1
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/20913/

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-rubyforge-0.4.2:devel/ruby-rubyforge

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
