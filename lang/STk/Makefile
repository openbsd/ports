# $OpenBSD: Makefile,v 1.46 2017/10/23 17:10:51 sthen Exp $

BROKEN-sparc64=	fails in mpn_dm_1.c, error: lvalue required in asm statement

COMMENT=	Scheme interpreter with Tk interface

STK_VERSION=	4.0.1
DISTNAME=	STk-${STK_VERSION}
REVISION=	19
CATEGORIES=	lang

HOMEPAGE=	http://kaolin.unice.fr/STk/

MASTER_SITES=	http://kaolin.unice.fr/STk/Distrib/

# BSD-like licenses apply
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 c m xcb

CONFIGURE_STYLE=gnu

DESTDIRNAME=	root

NO_TEST=	Yes

STK_ARCH=	OpenBSD-$(MACHINE)
SUBST_VARS=	STK_VERSION STK_ARCH

.include <bsd.port.mk>
