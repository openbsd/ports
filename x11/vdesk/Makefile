# $OpenBSD: Makefile,v 1.10 2019/07/12 20:51:23 sthen Exp $

COMMENT=		virtual desktop manager
DISTNAME=		vdesk-1.2
REVISION=		3

CATEGORIES=		x11
MASTER_SITES=		http://offog.org/files/

HOMEPAGE=		http://offog.org/code/vdesk.html

# MIT
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	gnu

WANTLIB+=		ICE SM X11 c

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vdesk
	cp ${WRKSRC}/README ${WRKSRC}/AUTHORS ${WRKSRC}/COPYING \
	    ${PREFIX}/share/doc/vdesk

.include <bsd.port.mk>
