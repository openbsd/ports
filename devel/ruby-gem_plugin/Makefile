# $OpenBSD: Makefile,v 1.1.1.1 2006/10/20 18:15:00 bernd Exp $

COMMENT=	"install Ruby gems as plugins"

DISTNAME=	gem_plugin-0.2.1
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel

# RubyLicense
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/9199/

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/ruby-rake

PKG_ARCH=	*

.include <bsd.port.mk>
