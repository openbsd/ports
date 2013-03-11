# $OpenBSD: Makefile,v 1.25 2013/03/11 01:30:26 espie Exp $

COMMENT=	receive/send files via X/Y/ZMODEM protocol

DISTNAME=	lrzsz-0.12.20
REVISION=	0
CATEGORIES=	comms

HOMEPAGE=	http://www.ohse.de/uwe/software/lrzsz.html

MASTER_SITES=	http://www.ohse.de/uwe/releases/

PERMIT_PACKAGE_CDROM=	possible copyright issue with rzsz
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-nls
USE_GROFF =	Yes

ALL_TARGET=	all # vcheck

.include <bsd.port.mk>
