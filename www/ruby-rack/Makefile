# $OpenBSD: Makefile,v 1.5 2010/09/23 22:30:30 jeremy Exp $

COMMENT=		modular Ruby webserver interface

DISTNAME=		rack-1.0.0
PKGNAME=		ruby-${DISTNAME}
REVISION =      	0
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
