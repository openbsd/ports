# $OpenBSD: Makefile,v 1.27 2008/12/09 10:46:35 jasper Exp $

COMMENT=	powerful programming editor

DISTNAME=	xwpe-1.5.30a
CATEGORIES=	editors

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/editors/X/} \
		http://www.identicalsoftware.com/xwpe/ 

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c ncurses z

ALL_TARGET=	xwpe

CONFIGURE_STYLE=gnu
DESTDIRNAME=	none
MAKE_FLAGS=	CFLAGS='${CFLAGS} -I${X11BASE}/include'
FAKE_FLAGS=	prefix=${WRKINST}${PREFIX} MANDIR=${WRKINST}${PREFIX}/man

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
