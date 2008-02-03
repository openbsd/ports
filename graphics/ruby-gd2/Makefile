# $OpenBSD: Makefile,v 1.1.1.1 2008/02/03 01:09:59 jcs Exp $

COMMENT=	ruby interface to the gd2 graphics library

DISTNAME=	gd2-1.1.1
PKGNAME=	ruby-${DISTNAME}
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
