# $OpenBSD: Makefile,v 1.22 2001/03/13 14:42:32 brad Exp $

DISTNAME=	xruskb-1.13.0
CATEGORIES=	russian x11
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.yars.free.net/pub/software/unix/X11/

MAINTAINER=	Oleg Safiullin <form@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE=gnu

.if defined(USE_MOTIF) && ${USE_MOTIF:U} == YES
FLAVOR=		motif
.endif

FLAVORS=	motif
FLAVOR?=

.if ${FLAVOR:L:Mmotif}
CONFIGURE_ARGS=	--with-motif --without-Xaw
USE_MOTIF=	Yes
.else
CONFIGURE_ARGS=	--without-motif --with-Xaw
.endif

post-install:
	${INSTALL_DATA} ${WRKSRC}/Xrus.ad ${PREFIX}/share/xruskb
	${INSTALL_DATA} ${WRKSRC}/xrus.doc-english ${PREFIX}/share/xruskb/xrus.doc
	${INSTALL_DATA} ${WRKSRC}/xrus.doc-koi8 ${PREFIX}/share/xruskb

.include <bsd.port.mk>
