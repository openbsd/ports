# $OpenBSD: Makefile,v 1.12 2010/04/27 21:53:56 sthen Exp $

COMMENT=	webcam plugin for GkrellM2

V=		2.0.0
DISTNAME=	gkrellkam-${V}
PKGNAME=	${DISTNAME}p8
CATEGORIES=	graphics

HOMEPAGE=	http://gkrellkam.sourceforge.net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gkrellkam/}
DISTFILES=	gkrellkam_${V}.tar.gz

PLUGIN=		${WRKSRC}/gkrellkam2.so

WANTLIB=

post-install:
	${INSTALL_MAN} ${WRKSRC}/gkrellkam-list.5 ${PREFIX}/man/man5/gkrellkam.5

.include <bsd.port.mk>
