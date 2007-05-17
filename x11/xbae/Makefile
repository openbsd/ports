# $OpenBSD: Makefile,v 1.2 2007/05/17 05:03:49 steven Exp $

COMMENT=	"Motif-based table widget"

DISTNAME=	xbae-4.60.4
PKGNAME=	${DISTNAME}p0

SHARED_LIBS=	Xbae 4.60

CATEGORIES=	x11 math

HOMEPAGE=	http://xbae.sourceforge.net/

MAINTAINER=	Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xp Xpm Xt

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xbae/}

USE_LIBTOOL=	 Yes
USE_X11=	 Yes
USE_MOTIF=	 Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	 --datadir=${PREFIX}/share/doc \
		 --enable-production

.include <bsd.port.mk>
