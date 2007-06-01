# $OpenBSD: Makefile,v 1.2 2007/06/01 16:24:48 jcs Exp $

COMMENT=	"ruby library to create XML markup and data structures"

DISTNAME=	builder-2.1.1
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	textproc

# mit
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=builder/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
