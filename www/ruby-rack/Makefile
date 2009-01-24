# $OpenBSD: Makefile,v 1.3 2009/01/24 15:20:54 bernd Exp $

COMMENT=		modular Ruby webserver interface

DISTNAME=		rack-0.9.1
PKGNAME=		ruby-${DISTNAME}
CATEGORIES=		www

HOMEPAGE=		http://rack.rubyforge.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=rack/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

.include <bsd.port.mk>
