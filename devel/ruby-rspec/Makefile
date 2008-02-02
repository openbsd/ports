# $OpenBSD: Makefile,v 1.5 2008/02/02 09:30:09 bernd Exp $

COMMENT=		Ruby framework for Behaviour Driven Development

DISTNAME=		rspec-1.1.3
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
