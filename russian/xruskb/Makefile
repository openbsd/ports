# $OpenBSD: Makefile,v 1.11 2000/02/15 05:05:08 turan Exp $

DISTNAME=	xruskb-1.11.0
CATEGORIES=	russian x11
MASTER_SITES=	ftp://ftp.yars.free.net/pub/software/unix/X11/

MAINTAINER=	form@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

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
	@${ECHO_MSG} "***"
	@${ECHO_MSG} "*** You are building Xaw version of xruskb."
	@${ECHO_MSG} "*** Some features are not available in Xaw version."
	@${ECHO_MSG} "*** If you wish to build full-featured Motif version,"
	@${ECHO_MSG} "*** just type 'make USE_MOTIF=yes'."
	@${ECHO_MSG} "***"
.endif

post-install:
	${INSTALL_DATA} ${WRKSRC}/Xrus.ad ${X11BASE}/lib/X11/app-defaults/Xrus
	${INSTALL_DATA} ${WRKSRC}/xrus.doc-english ${X11BASE}/share/xruskb/xrus.doc
	${INSTALL_DATA} ${WRKSRC}/xrus.doc-koi8 ${X11BASE}/share/xruskb

.include <bsd.port.mk>
