# $OpenBSD: Makefile,v 1.3 2010/09/23 22:30:27 jeremy Exp $

COMMENT=	ruby interface to the gd2 graphics library

DISTNAME=	gd2-1.1.1
PKGNAME=	ruby-${DISTNAME}
REVISION =      1
CATEGORIES=	graphics devel

# gpl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=gd2/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

RUN_DEPENDS=	::graphics/gd

.include <bsd.port.mk>
