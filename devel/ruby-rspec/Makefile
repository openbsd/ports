# $OpenBSD: Makefile,v 1.10 2010/09/23 22:30:27 jeremy Exp $

COMMENT=		Ruby framework for Behaviour Driven Development

DISTNAME=		rspec-1.2.8
PKGNAME=		ruby-${DISTNAME}
REVISION =      	0
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
