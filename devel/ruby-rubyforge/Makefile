# $OpenBSD: Makefile,v 1.6 2008/10/27 19:32:46 pirofti Exp $

COMMENT=	script which automates a limited set of rubyforge operations

DISTNAME=	rubyforge-1.0.1
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	devel net

# ?
PERMIT_PACKAGE_CDROM=	no
PERMIT_PACKAGE_FTP=	no
PERMIT_DISTFILES_CDROM=	no
PERMIT_DISTFILES_FTP=	no

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=codeforpeople/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
