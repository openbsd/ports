# $OpenBSD: Makefile,v 1.20 2017/09/27 06:25:58 dcoppa Exp $

COMMENT=	programmable ncurses-based AIM client
DISTNAME=	pork-0.99.8.1
REVISION=	2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ojnk/}

HOMEPAGE=	http://ojnk.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m ncurses perl pthread

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.59

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pork
	${INSTALL_DATA} ${WRKSRC}/{QUICK_START,README} \
		${PREFIX}/share/doc/pork
	${INSTALL_DATA} ${WRKSRC}/examples/blist.txt \
		${PREFIX}/share/examples/pork

.include <bsd.port.mk>
