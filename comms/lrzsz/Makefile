# $OpenBSD: Makefile,v 1.18 2004/11/21 22:29:50 espie Exp $

COMMENT=	"receive/send files via X/Y/ZMODEM protocol"

DISTNAME=	lrzsz-0.12.20
CATEGORIES=	comms

HOMEPAGE=	http://www.ohse.de/uwe/software/lrzsz.html	

MASTER_SITES=	http://www.ohse.de/uwe/releases/	

PERMIT_PACKAGE_CDROM=	"possible copyright issue with rzsz"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"possible copyright issue with rzsz"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-nls

ALL_TARGET=	all # vcheck

.include <bsd.port.mk>
