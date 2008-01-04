# $OpenBSD: Makefile,v 1.26 2008/01/04 17:48:34 espie Exp $

COMMENT=	powerful programming editor

DISTNAME=	xwpe-1.5.22a
PKGNAME=	${DISTNAME}p0
CATEGORIES=	editors

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/editors/X/} \
		http://www.identicalsoftware.com/xwpe/ 

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c ncurses

ALL_TARGET=	xwpe

CONFIGURE_STYLE=gnu
DESTDIRNAME=	none
MAKE_FLAGS=	CFLAGS='${CFLAGS} -I${X11BASE}/include'
FAKE_FLAGS=	prefix=${WRKINST}${PREFIX} MANDIR=${WRKINST}${PREFIX}/man

USE_X11=	Yes
NO_REGRESS=	Yes

post-install:
	@strip ${PREFIX}/bin/xwpe

.include <bsd.port.mk>
