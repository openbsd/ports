# $OpenBSD: Makefile,v 1.5 2014/08/30 13:17:48 ajacoutot Exp $

COMMENT=	english-russian keyboard switcher for X11

DISTNAME=	xruskb-1.15.4
REVISION=	3
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.yars.free.net/pub/source/xruskb/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 Xext Xmu Xt c

CONFIGURE_STYLE=gnu

FLAVORS=	motif
FLAVOR?=

.if ${FLAVOR:Mmotif}
LIB_DEPENDS+=	x11/openmotif
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
