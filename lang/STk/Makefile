# $OpenBSD: Makefile,v 1.43 2015/04/20 20:08:18 schwarze Exp $

BROKEN-sparc64=	fails in mpn_dm_1.c, error: lvalue required in asm statement

COMMENT=	Scheme interpreter with Tk interface

STK_VERSION=	4.0.1
DISTNAME=	STk-${STK_VERSION}
REVISION=	17
CATEGORIES=	lang

HOMEPAGE=	http://kaolin.unice.fr/STk/

MASTER_SITES=	ftp://kaolin.unice.fr/pub/STk/

# BSD-like licenses apply
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 c m pthread-stubs xcb

CONFIGURE_STYLE=gnu

DESTDIRNAME=	root

NO_TEST=	Yes

STK_ARCH=	OpenBSD-$(MACHINE)
SUBST_VARS=	STK_VERSION STK_ARCH

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
CONFIGURE_ARGS+=	--disable-dynload
.endif
