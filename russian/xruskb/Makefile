# $OpenBSD: Makefile,v 1.14 2000/03/05 18:30:41 espie Exp $

DISTNAME=	xruskb-1.13.0
CATEGORIES=	russian x11
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftp.yars.free.net/pub/software/unix/X11/

MAINTAINER=	form@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
GNU_CONFIGURE=	Yes

.if defined(USE_MOTIF) && ${USE_MOTIF:U} == YES
CONFIGURE_ARGS=	--with-motif --without-Xaw
LIB_DEPENDS=	Xm:x11/lesstif
.else
CONFIGURE_ARGS=	--without-motif --with-Xaw
.endif

pre-configure:
.if !defined(USE_MOTIF) || ${USE_MOTIF:U} != YES
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
