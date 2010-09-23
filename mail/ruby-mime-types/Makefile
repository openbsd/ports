# $OpenBSD: Makefile,v 1.4 2010/09/23 22:30:27 jeremy Exp $

COMMENT=		MIME type library for Ruby

DISTNAME=		mime-types-1.16
PKGNAME=		ruby-${DISTNAME}
REVISION=		0
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
