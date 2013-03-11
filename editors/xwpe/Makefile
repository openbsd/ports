# $OpenBSD: Makefile,v 1.32 2013/03/11 11:02:50 espie Exp $

COMMENT=	powerful programming editor

DISTNAME=	xwpe-1.5.30a
REVISION=	0
CATEGORIES=	editors

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/editors/X/} \
		http://www.identicalsoftware.com/xwpe/ 

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		ICE SM X11 c ncurses pthread-stubs xcb z

ALL_TARGET=	xwpe

CONFIGURE_STYLE=gnu
DESTDIRNAME=	none
MAKE_FLAGS=	CFLAGS='${CFLAGS} -I${X11BASE}/include'
FAKE_FLAGS=	prefix=${WRKINST}${PREFIX} MANDIR=${WRKINST}${PREFIX}/man

USE_GROFF =	Yes
NO_TEST=	Yes

.include <bsd.port.mk>
