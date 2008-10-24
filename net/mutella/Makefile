# $OpenBSD: Makefile,v 1.6 2008/10/24 14:31:28 jasper Exp $

COMMENT=		gnutella client with an easy to use interface

DISTNAME=		mutella-0.4.5
CATEGORIES=		net

HOMEPAGE=		http://mutella.sourceforge.net/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses m pthread readline stdc++ z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mutella/}

SEPARATE_BUILD=		simple

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
