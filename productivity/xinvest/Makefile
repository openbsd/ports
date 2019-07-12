# $OpenBSD: Makefile,v 1.23 2019/07/12 20:49:00 sthen Exp $

COMMENT= 		personal finance tracking and performance tool

DISTNAME=		xinvest-2.6.9
REVISION=		8
CATEGORIES=		productivity x11

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xpm Xt c m Xm

MASTER_SITES=	https://distfiles.nl/

LIB_DEPENDS+=		x11/motif
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
