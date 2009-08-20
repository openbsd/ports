# $OpenBSD: Makefile,v 1.9 2009/08/20 22:13:00 bernd Exp $

COMMENT=		Ruby timezone library

VERSION=		0.3.14
DISTNAME=		tzinfo-${VERSION}
PKGNAME=		ruby-tzinfo-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://tzinfo.rubyforge.org/

# MIT/X Consortium
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=tzinfo/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
