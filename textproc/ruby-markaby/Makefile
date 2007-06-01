# $OpenBSD: Makefile,v 1.2 2007/06/01 16:24:48 jcs Exp $

COMMENT=	"HTML templating language for Ruby"

DISTNAME=	markaby-0.5
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	textproc devel

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=markaby/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-builder-2.1.1:textproc/ruby-builder

PKG_ARCH=	*

.include <bsd.port.mk>
