# $OpenBSD: Makefile,v 1.10 2013/10/11 23:49:35 naddy Exp $

COMMENT=		curses-based Lines game

DISTNAME=		clines-1.0.4
CATEGORIES=		games
REVISION=		1

HOMEPAGE=		http://manticore.2y.net/prj/clines-a.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ncursesw

MASTER_SITES=		http://manticore.2y.net/cgi-bin/dlwct.sh?f=clines/
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clines
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/clines

.include <bsd.port.mk>
