# $OpenBSD: Makefile,v 1.3 2004/11/24 00:11:03 espie Exp $

COMMENT=	"library to provide abstract access to various archives"
DISTNAME=	physfs-1.0.0
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}downloads/

HOMEPAGE=	http://icculus.org/physfs/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# ZLib
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c curses pthread readline z

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
