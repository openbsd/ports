# $OpenBSD: Makefile,v 1.25 2001/04/18 15:01:19 espie Exp $

COMMENT=	"english-russian keyboard switcher for X11"

DISTNAME=	xruskb-1.13.0
CATEGORIES=	russian x11
NEED_VERSION=	1.400
MASTER_SITES=	ftp://ftp.yars.free.net/pub/software/unix/X11/

MAINTAINER=	Oleg Safiullin <form@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE=gnu

FLAVORS=	motif
FLAVOR?=

.if ${FLAVOR:L:Mmotif} || ${FLAVOR:L:Mlesstif}
USE_MOTIF=	any
CONFIGURE_ARGS=	--with-motif --without-Xaw
.else
CONFIGURE_ARGS=	--without-motif --with-Xaw
.endif

post-install:
	${INSTALL_DATA} ${WRKSRC}/Xrus.ad ${PREFIX}/share/xruskb
	${INSTALL_DATA} ${WRKSRC}/xrus.doc-english ${PREFIX}/share/xruskb/xrus.doc
	${INSTALL_DATA} ${WRKSRC}/xrus.doc-koi8 ${PREFIX}/share/xruskb

.include <bsd.port.mk>
