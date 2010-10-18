# $OpenBSD: Makefile,v 1.5 2010/10/18 18:00:17 espie Exp $

COMMENT=		curses-based Lines game

DISTNAME=		clines-1.0.4
CATEGORIES=		games

HOMEPAGE=		http://manticore.2y.net/prj/clines-a.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB= c ncurses

MASTER_SITES=		http://manticore.2y.net/cgi-bin/dlwct.sh?f=clines/
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	gnu
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clines
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/clines

.include <bsd.port.mk>
