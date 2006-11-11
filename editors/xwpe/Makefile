# $OpenBSD: Makefile,v 1.22 2006/11/11 21:04:27 steven Exp $

COMMENT=	"powerful programming editor"

DISTNAME=	xwpe-1.5.22a
CATEGORIES=	editors

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/editors/X/} \
		http://www.identicalsoftware.com/xwpe/ 

MAINTAINER=	Yannick Cote <yanick@fries.net>

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c ncurses

ALL_TARGET=	xwpe

CONFIGURE_STYLE=gnu
MAKE_FLAGS=	CFLAGS='${CFLAGS} -I${X11BASE}/include'
FAKE_FLAGS=	${MAKE_FLAGS} prefix=${WRKINST}${PREFIX} MANDIR=${WRKINST}${PREFIX}/man
#SEPARATE_BUILD=	simple

USE_X11=	Yes
NO_REGRESS=	Yes

post-install:
	@strip ${PREFIX}/bin/xwpe

.include <bsd.port.mk>
