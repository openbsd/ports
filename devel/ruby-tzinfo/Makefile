# $OpenBSD: Makefile,v 1.11 2010/09/28 20:12:17 jeremy Exp $

COMMENT=		Ruby timezone library

VERSION=		0.3.14
DISTNAME=		tzinfo-${VERSION}
PKGNAME=		ruby-tzinfo-${VERSION}
REVISION =      	0
CATEGORIES=		devel

HOMEPAGE=		http://tzinfo.rubyforge.org/

# MIT/X Consortium
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

MODRUBY_REGRESS=	rake

.include <bsd.port.mk>
