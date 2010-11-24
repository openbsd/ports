# $OpenBSD: Makefile,v 1.9 2010/11/24 21:35:15 jeremy Exp $

COMMENT=	installer for Rails applications

DISTNAME=	rails-app-installer-0.2.0
REVISION =	5
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
RUN_DEPENDS=	www/ruby-mongrel,${MODRUBY_FLAVOR} \
		sysutils/ruby-mongrel_cluster,${MODRUBY_FLAVOR} \
		databases/ruby-sqlite3,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
