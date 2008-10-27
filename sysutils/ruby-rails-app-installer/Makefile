# $OpenBSD: Makefile,v 1.4 2008/10/27 11:34:00 pirofti Exp $

COMMENT=	installer for Rails applications

DISTNAME=	rails-app-installer-0.2.0
PKGNAME=	ruby-${DISTNAME}p2
CATEGORIES=	sysutils

HOMEPAGE=	http://code.google.com/p/rails-app-installer/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# MIT but no license in distfile...
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=rails-installer/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::www/ruby-mongrel \
		::sysutils/ruby-mongrel_cluster \
		::databases/ruby-sqlite3

PKG_ARCH=	*

.include <bsd.port.mk>
