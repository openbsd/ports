# $OpenBSD: Makefile,v 1.33 2010/07/18 18:49:01 naddy Exp $

COMMENT=	Scheme interpreter with Tk interface

STK_VERSION=	4.0.1
DISTNAME=	STk-${STK_VERSION}
PKGNAME=	${DISTNAME}p11
CATEGORIES=	lang

HOMEPAGE=	http://kaolin.unice.fr/STk/

MASTER_SITES=	ftp://kaolin.unice.fr/pub/STk/

# BSD-like licenses apply
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SM X11 c m pthread-stubs xcb

USE_X11=	Yes

CONFIGURE_STYLE=gnu

DESTDIRNAME=	root

NO_REGRESS=	Yes

STK_ARCH=	OpenBSD-$(OSREV)-$(MACHINE)
SUBST_VARS=	STK_VERSION STK_ARCH

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
CONFIGURE_ARGS+=	--disable-dynload
.endif
