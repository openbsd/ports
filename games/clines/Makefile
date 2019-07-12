# $OpenBSD: Makefile,v 1.13 2019/07/12 20:46:16 sthen Exp $

COMMENT=		curses-based Lines game

DISTNAME=		clines-1.0.4
CATEGORIES=		games
REVISION=		3

HOMEPAGE=		http://manticore.2y.net/prj/clines-a.html

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB += c curses

MASTER_SITES=		http://manticore.2y.net/cgi-bin/dlwct.sh?f=clines/
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/clines
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/clines

.include <bsd.port.mk>
