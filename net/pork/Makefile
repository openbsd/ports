# $OpenBSD: Makefile,v 1.18 2016/07/08 16:48:21 sthen Exp $

COMMENT=	programmable ncurses-based AIM client
DISTNAME=	pork-0.99.8.1
REVISION=	0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ojnk/}

HOMEPAGE=	http://ojnk.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m ncurses perl pthread

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pork
	${INSTALL_DATA} ${WRKSRC}/{QUICK_START,README} \
		${PREFIX}/share/doc/pork
	${INSTALL_DATA} ${WRKSRC}/examples/blist.txt \
		${PREFIX}/share/examples/pork

.include <bsd.port.mk>
