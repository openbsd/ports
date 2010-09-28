# $OpenBSD: Makefile,v 1.4 2010/09/28 20:12:17 jeremy Exp $

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

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

RUN_DEPENDS=	::graphics/gd

.include <bsd.port.mk>
