# $OpenBSD: Makefile,v 1.3 1999/04/09 04:11:54 brad Exp $

DISTNAME=	xruskb-1.5.3
CATEGORIES=	russian x11
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/cyrillic/x11/ \
		ftp://vs.itam.nsc.ru/pub/Unix/cyrillic/x11/

MAINTAINER=	ports@openbsd.org

USE_X11=	yes
GNU_CONFIGURE=	yes

.if defined(USE_MOTIF)
CONFIGURE_ARGS=	--with-motif --without-Xaw
LIB_DEPENDS=	Xm:${PORTSDIR}/x11/lesstif
.else
CONFIGURE_ARGS=	--without-motif --with-Xaw
.endif

pre-configure:
.if !defined(USE_MOTIF)
	@${ECHO} "***"
	@${ECHO} "*** You are building Xaw version of xruskb."
	@${ECHO} "*** Some features are not available in Xaw version."
	@${ECHO} "*** If you wish to build full-featured Motif version,"
	@${ECHO} "*** just type 'make USE_MOTIF=yes'."
	@${ECHO} "***"
.endif

post-install:
	${CP} ${WRKSRC}/Xrus.ad ${X11BASE}/lib/X11/app-defaults/Xrus
	${CP} ${WRKSRC}/xrus.doc-english ${X11BASE}/share/xruskb/xrus.doc
	${CP} ${WRKSRC}/xrus.doc-koi8 ${X11BASE}/share/xruskb

.include <bsd.port.mk>
