# $OpenBSD: Makefile,v 1.8 2019/07/12 20:51:30 sthen Exp $

COMMENT=	english-russian keyboard switcher for X11

DISTNAME=	xruskb-1.15.4
REVISION=	4
CATEGORIES=	x11
MASTER_SITES=	http://lav.yar.ru/download/xruskb/
EXTRACT_SUFX=	.tar.bz2

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		ICE SM X11 Xext Xmu Xt c

CONFIGURE_STYLE=gnu

FLAVORS=	motif
FLAVOR?=

.if ${FLAVOR:Mmotif}
LIB_DEPENDS+=	x11/motif
WANTLIB+=	Xm
CONFIGURE_ARGS=	--with-toolkit=motif
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'
.else
CONFIGURE_ARGS=	--with-toolkit=xaw
WANTLIB+=	Xaw
.endif

pre-configure:
	@perl -i -pe 's!/usr/!${LOCALBASE}/!' \
	    ${WRKSRC}/Xrus.{ad,wmaker}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xruskb
	${INSTALL_DATA} ${WRKSRC}/xrus.doc-english \
		${PREFIX}/share/doc/xruskb/xrus.doc
	${INSTALL_DATA} ${WRKSRC}/xrus.doc-koi8 ${PREFIX}/share/doc/xruskb
	${INSTALL_DATA} ${WRKSRC}/README* ${PREFIX}/share/doc/xruskb
	${INSTALL_DATA} ${WRKSRC}/Xrus.ad ${PREFIX}/lib/X11/app-defaults/Xrus
	${INSTALL_DATA} ${WRKSRC}/Xrus.wmaker ${PREFIX}/share/xruskb

.include <bsd.port.mk>
