# $OpenBSD: Makefile,v 1.5 2008/06/14 23:46:38 landry Exp $

COMMENT=		Ruby timezone library

VERSION=		0.3.8
DISTNAME=		tzinfo-${VERSION}
PKGNAME=		ruby-tzinfo-${VERSION}p0
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

NO_REGRESS=		Yes

PKG_ARCH=		*

.include <bsd.port.mk>
