# $OpenBSD: Makefile,v 1.4 2008/01/28 18:24:02 bernd Exp $

COMMENT=		Ruby framework for Behaviour Driven Development

DISTNAME=		rspec-1.1.2
PKGNAME=		ruby-${DISTNAME}
CATEGORIES=		devel

HOMEPAGE=		http://rspec.rubyforge.net/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=rspec/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

.include <bsd.port.mk>
