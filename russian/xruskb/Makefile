# $OpenBSD: Makefile,v 1.5 1999/06/23 08:53:19 form Exp $

DISTNAME=	xruskb-1.9.1
CATEGORIES=	russian x11
MASTER_SITES=	ftp://ftp.kiarchive.ru/pub/cyrillic/x11/ \
		ftp://vell.nsc.ru/pub/X11/cyrillic/

MAINTAINER=	form@openbsd.org

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
