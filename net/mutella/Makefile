# $OpenBSD: Makefile,v 1.2 2003/11/20 17:46:13 sturm Exp $

COMMENT=		"gnutella client with an easy to use interface"

DISTNAME=		mutella-0.4.3
CATEGORIES=		net

HOMEPAGE=		http://mutella.sourceforge.net

MAINTAINER=		rich cannings <cannings@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mutella/}

MODULES=                gcc3
MODGCC3_ARCHES=         sparc64
MODGCC3_LANGS=          c++

SEPARATE_BUILD=		simple
CONFIGURE_STYLE=	gnu	

.include <bsd.port.mk>
