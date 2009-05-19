# $OpenBSD: Makefile,v 1.3 2009/05/19 22:02:20 bernd Exp $

COMMENT=		MIME type library for Ruby

DISTNAME=		mime-types-1.16
PKGNAME=		ruby-${DISTNAME}
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
