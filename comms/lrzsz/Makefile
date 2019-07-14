# $OpenBSD: Makefile,v 1.29 2019/07/14 21:45:42 kmos Exp $

COMMENT=	receive/send files via X/Y/ZMODEM protocol

DISTNAME=	lrzsz-0.12.20
REVISION=	2
CATEGORIES=	comms

HOMEPAGE=	https://www.ohse.de/uwe/software/lrzsz.html

MASTER_SITES=	https://www.ohse.de/uwe/releases/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-nls

ALL_TARGET=	all # vcheck

.include <bsd.port.mk>
