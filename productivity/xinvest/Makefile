# $OpenBSD: Makefile,v 1.11 2009/08/10 06:34:09 kili Exp $

COMMENT= 		personal finance tracking and performance tool

DISTNAME=		xinvest-2.6.9
PKGNAME=		${DISTNAME}p2
CATEGORIES=		productivity x11

HOMEPAGE= 		http://xinvest.dotsrc.org/

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xpm Xt c m pthread-stubs xcb

MASTER_SITES=	${HOMEPAGE}

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
