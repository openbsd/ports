# $OpenBSD: Makefile,v 1.19 2013/03/11 11:37:55 espie Exp $

COMMENT= 		personal finance tracking and performance tool

DISTNAME=		xinvest-2.6.9
REVISION=		6
CATEGORIES=		productivity x11

MAINTAINER=		Martynas Venckus <martynas@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xpm Xt c m Xm

MASTER_SITES=	http://distfiles.nl/

LIB_DEPENDS+=		x11/openmotif
CONFIGURE_STYLE= imake
INSTALL_MAN=	No	# no manual page
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/Xinvest ${PREFIX}/bin/xinvest
	${INSTALL_DATA} ${WRKSRC}/Xinvest.ad ${PREFIX}/lib/X11/app-defaults/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xinvest
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/xinvest

.include <bsd.port.mk>
