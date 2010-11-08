# $OpenBSD: Makefile,v 1.7 2010/11/08 23:28:55 jeremy Exp $

COMMENT=	installer for Rails applications

DISTNAME=	rails-app-installer-0.2.0
REVISION =      4
CATEGORIES=	sysutils

HOMEPAGE=	http://code.google.com/p/rails-app-installer/

MAINTAINER=	Paul Irofti <pirofti@openbsd.org>

# MIT but no license in distfile...
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:${MODRUBY_PKG_PREFIX}-mongrel-*:www/ruby-mongrel,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-mongrel_cluster-*:sysutils/ruby-mongrel_cluster,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-sqlite3-*:databases/ruby-sqlite3,${FLAVOR}

.include <bsd.port.mk>
