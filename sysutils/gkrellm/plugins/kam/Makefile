# $OpenBSD: Makefile,v 1.16 2015/01/22 21:17:47 naddy Exp $

COMMENT=	webcam plugin for GkrellM2

V=		2.0.0
DISTNAME=	gkrellkam-${V}
REVISION=	10
CATEGORIES=	graphics

HOMEPAGE=	http://gkrellkam.sourceforge.net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gkrellkam/}
DISTFILES=	gkrellkam_${V}.tar.gz

PLUGIN=		${WRKSRC}/gkrellkam2.so

WANTLIB=

post-install:
	${INSTALL_MAN} ${WRKSRC}/gkrellkam-list.5 ${PREFIX}/man/man5/gkrellkam.5

.include <bsd.port.mk>
