# $OpenBSD: Makefile,v 1.5 2007/09/15 22:36:55 merdely Exp $

COMMENT=		gnutella client with an easy to use interface

DISTNAME=		mutella-0.4.3
CATEGORIES=		net

HOMEPAGE=		http://mutella.sourceforge.net

MAINTAINER=		rich cannings <cannings@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c curses m pthread readline stdc++ z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mutella/}

SEPARATE_BUILD=		simple
CONFIGURE_STYLE=	gnu	

.include <bsd.port.mk>
