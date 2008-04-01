# $OpenBSD: Makefile,v 1.4 2008/04/01 22:12:16 bernd Exp $

COMMENT=	script which automates a limited set of rubyforge operations

DISTNAME=	rubyforge-0.4.5
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
