# $OpenBSD: Makefile,v 1.12 2009/12/27 21:40:34 jasper Exp $

COMMENT= 		personal finance tracking and performance tool

DISTNAME=		xinvest-2.6.9
PKGNAME=		${DISTNAME}p3
CATEGORIES=		productivity x11

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xpm Xt c m pthread-stubs xcb

MASTER_SITES=	http://www.phil.uu.nl/~lievisse/distfiles/

USE_X11=	Yes
USE_MOTIF=	Yes
CONFIGURE_STYLE= imake
INSTALL_MAN=	No	# no manual page

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Xinvest ${PREFIX}/bin/xinvest
	${INSTALL_DATA} ${WRKSRC}/Xinvest.ad ${PREFIX}/lib/X11/app-defaults/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xinvest
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xinvest

.include <bsd.port.mk>
