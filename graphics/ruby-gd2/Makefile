# $OpenBSD: Makefile,v 1.7 2010/11/24 21:35:14 jeremy Exp $

COMMENT=	ruby interface to the gd2 graphics library

DISTNAME=	gd2-1.1.1
REVISION =	3
CATEGORIES=	graphics devel

# gpl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

RUN_DEPENDS=	graphics/gd

.include <bsd.port.mk>
