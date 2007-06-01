# $OpenBSD: Makefile,v 1.2 2007/06/01 16:28:31 jcs Exp $

COMMENT=	"script which automates a limited set of rubyforge operations"

DISTNAME=	rubyforge-0.4.2
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel net

# ?
PERMIT_PACKAGE_CDROM=	no
PERMIT_PACKAGE_FTP=	no
PERMIT_DISTFILES_CDROM=	no
PERMIT_DISTFILES_FTP=	no

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=codeforpeople/}

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
