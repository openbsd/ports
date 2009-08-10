# $OpenBSD: Makefile,v 1.28 2009/08/10 06:31:09 kili Exp $

COMMENT=	powerful programming editor

DISTNAME=	xwpe-1.5.30a
PKGNAME=	${DISTNAME}p0
CATEGORIES=	editors

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/editors/X/} \
		http://www.identicalsoftware.com/xwpe/ 

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c ncurses pthread-stubs xcb z

ALL_TARGET=	xwpe

CONFIGURE_STYLE=gnu
DESTDIRNAME=	none
MAKE_FLAGS=	CFLAGS='${CFLAGS} -I${X11BASE}/include'
FAKE_FLAGS=	prefix=${WRKINST}${PREFIX} MANDIR=${WRKINST}${PREFIX}/man

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
