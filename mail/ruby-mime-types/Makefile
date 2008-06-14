# $OpenBSD: Makefile,v 1.2 2008/06/14 23:53:05 landry Exp $

COMMENT=		MIME type library for Ruby

DISTNAME=		mime-types-1.15
PKGNAME=		ruby-${DISTNAME}p0
CATEGORIES=		mail

HOMEPAGE=		http://mime-types.rubyforge.org/

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=mime-types/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

.include <bsd.port.mk>
