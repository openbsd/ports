# $OpenBSD: Makefile,v 1.28 2008/09/29 08:32:04 jasper Exp $

COMMENT=	Scheme interpreter with Tk interface

STK_VERSION=	4.0.1
DISTNAME=	STk-${STK_VERSION}
PKGNAME=	${DISTNAME}p7
CATEGORIES=	lang

HOMEPAGE=	http://kaolin.unice.fr/STk/

MASTER_SITES=	ftp://kaolin.unice.fr/pub/STk/

# BSD-like licenses apply
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE SM X11 c m

USE_X11=	Yes

CONFIGURE_STYLE=gnu

DESTDIRNAME=	root

NO_REGRESS=	Yes

STK_ARCH=	$(OPSYS)-$(OPSYS_VER)-$(MACHINE)
SUBST_VARS=	STK_VERSION STK_ARCH

.include <bsd.port.mk>

.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
CONFIGURE_ARGS+=	--disable-dynload
.endif
