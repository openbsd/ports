# $OpenBSD: Makefile,v 1.17 2003/02/16 21:24:52 margarida Exp $

COMMENT=	"receive/send files via X/Y/ZMODEM protocol"

DISTNAME=	lrzsz-0.12.20
CATEGORIES=	comms

HOMEPAGE=	http://www.ohse.de/uwe/software/lrzsz.html	

MASTER_SITES=	http://www.ohse.de/uwe/releases/	

PERMIT_PACKAGE_CDROM=	"possible copyright issue with rzsz"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"possible copyright issue with rzsz"
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-nls

ALL_TARGET=	all # vcheck

.include <bsd.port.mk>
