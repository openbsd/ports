# $OpenBSD: Makefile,v 1.3 2007/09/20 12:48:05 msf Exp $

SHARED_ONLY=		Yes

COMMENT=		Ruby timezone library

VERSION=		0.3.3
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

NO_REGRESS=		Yes

.include <bsd.port.mk>
