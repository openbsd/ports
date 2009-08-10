# $OpenBSD: Makefile,v 1.6 2009/08/10 06:34:09 kili Exp $

COMMENT= 		WWW quote retrieval tool

DISTNAME=		xquote-2.6.10
PKGNAME=		${DISTNAME}p3
CATEGORIES=		productivity x11

HOMEPAGE= 		http://xinvest.dotsrc.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xpm Xt c m pthread-stubs xcb

MASTER_SITES=	${HOMEPAGE}

LIB_DEPENDS=	Xbae::x11/xbae

USE_X11=	Yes
USE_MOTIF=	Yes
CONFIGURE_STYLE= imake
INSTALL_MAN=	No	# no manual page

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Xquote ${PREFIX}/bin/xquote
	${INSTALL_DATA} ${WRKSRC}/Xquote.ad ${PREFIX}/lib/X11/app-defaults/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xquote
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xquote

.include <bsd.port.mk>
