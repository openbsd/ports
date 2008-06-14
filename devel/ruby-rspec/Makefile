# $OpenBSD: Makefile,v 1.6 2008/06/14 23:46:38 landry Exp $

COMMENT=		Ruby framework for Behaviour Driven Development

DISTNAME=		rspec-1.1.3
PKGNAME=		ruby-${DISTNAME}p0
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
