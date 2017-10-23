# $OpenBSD: Makefile,v 1.35 2017/10/23 17:10:38 sthen Exp $

COMMENT=	powerful programming editor

DISTNAME=	xwpe-1.5.30a
REVISION=	2
CATEGORIES=	editors

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/editors/X/} \
		http://www.identicalsoftware.com/xwpe/ 

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 c ncurses xcb z

ALL_TARGET=	xwpe

CONFIGURE_STYLE=gnu
DESTDIRNAME=	none
MAKE_FLAGS=	CFLAGS='${CFLAGS} -I${X11BASE}/include'
FAKE_FLAGS=	prefix=${WRKINST}${PREFIX} MANDIR=${WRKINST}${PREFIX}/man

NO_TEST=	Yes

.include <bsd.port.mk>
