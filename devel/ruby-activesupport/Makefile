# $OpenBSD: Makefile,v 1.15 2009/01/14 22:20:07 bernd Exp $

COMMENT=	utility classes and extensions for rails framework 

DISTNAME=       activesupport-2.2.2
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=     devel

# MIT License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   ${MASTER_SITE_RUBYFORGE:=activesupport/}

MODULES=	lang/ruby

RUN_DEPENDS=	::lang/ruby,-iconv

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
