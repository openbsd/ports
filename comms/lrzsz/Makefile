# $OpenBSD: Makefile,v 1.27 2018/05/12 14:29:01 espie Exp $

COMMENT=	receive/send files via X/Y/ZMODEM protocol

DISTNAME=	lrzsz-0.12.20
REVISION=	1
CATEGORIES=	comms

HOMEPAGE=	http://www.ohse.de/uwe/software/lrzsz.html

MASTER_SITES=	http://www.ohse.de/uwe/releases/

PERMIT_PACKAGE_CDROM=	possible copyright issue with rzsz
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-nls

ALL_TARGET=	all # vcheck

.include <bsd.port.mk>
