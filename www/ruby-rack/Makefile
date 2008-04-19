# $OpenBSD: Makefile,v 1.1.1.1 2008/04/19 17:49:22 bernd Exp $

COMMENT=		modular Ruby webserver interface

DISTNAME=		rack-0.3.0
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
