# $OpenBSD: Makefile,v 1.40 2009/08/10 06:34:09 kili Exp $

COMMENT=	english-russian keyboard switcher for X11

DISTNAME=	xruskb-1.15.3
PKGNAME=	${DISTNAME}p2
CATEGORIES=	russian x11
MASTER_SITES=	ftp://ftp.yars.free.net/unix/X11/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xext Xmu Xt c pthread-stubs xcb

USE_X11=	Yes
CONFIGURE_STYLE=gnu

FLAVORS=	motif
FLAVOR?=

.if ${FLAVOR:L:Mmotif} || ${FLAVOR:L:Mlesstif}
USE_MOTIF=	any
CONFIGURE_ARGS=	--with-motif --without-Xaw
.else
CONFIGURE_ARGS=	--without-motif --with-Xaw
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
	${INSTALL_DATA} ${WRKSRC}/Xrus.ad ${PREFIX}/share/xruskb
	${INSTALL_DATA} ${WRKSRC}/Xrus.wmaker ${PREFIX}/share/xruskb

.include <bsd.port.mk>
