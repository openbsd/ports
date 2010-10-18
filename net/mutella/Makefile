# $OpenBSD: Makefile,v 1.7 2010/10/18 18:36:50 espie Exp $

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
USE_GROFF =	Yes

.include <bsd.port.mk>
