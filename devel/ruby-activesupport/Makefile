# $OpenBSD: Makefile,v 1.17 2009/08/12 03:35:29 msf Exp $

COMMENT=	utility classes and extensions for rails framework 

DISTNAME=       activesupport-2.3.2
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=     devel

# MIT License
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   ${MASTER_SITE_RUBYFORGE:=activesupport/}

MODULES=	lang/ruby

RUN_DEPENDS=	${MODRUBY_RUN_DEPENDS},-iconv

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
