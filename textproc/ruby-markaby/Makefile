# $OpenBSD: Makefile,v 1.1.1.1 2007/05/29 20:09:25 jcs Exp $

COMMENT=	"HTML templating language for Ruby"

DISTNAME=	markaby-0.5
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	textproc devel

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://rubyforge.org/frs/download.php/13597/

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-builder-2.1.1:textproc/ruby-builder

PKG_ARCH=	*

.include <bsd.port.mk>
