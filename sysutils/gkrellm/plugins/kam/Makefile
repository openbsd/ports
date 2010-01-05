# $OpenBSD: Makefile,v 1.11 2010/01/05 18:41:33 ajacoutot Exp $

COMMENT=	webcam plugin for GkrellM2

V=		2.0.0
DISTNAME=	gkrellkam-${V}
PKGNAME=	${DISTNAME}p7
CATEGORIES=	graphics

HOMEPAGE=	http://gkrellkam.sourceforge.net

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gkrellkam/}
DISTFILES=	gkrellkam_${V}.tar.gz

PLUGIN=		${WRKSRC}/gkrellkam2.so

WANTLIB=

post-install:
	${INSTALL_MAN} ${WRKSRC}/gkrellkam-list.5 ${PREFIX}/man/man5/gkrellkam.5

.include <bsd.port.mk>
