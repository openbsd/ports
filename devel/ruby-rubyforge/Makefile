# $OpenBSD: Makefile,v 1.5 2008/06/14 23:46:38 landry Exp $

COMMENT=	script which automates a limited set of rubyforge operations

DISTNAME=	rubyforge-0.4.5
PKGNAME=	ruby-${DISTNAME}p0
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
