# $OpenBSD: Makefile,v 1.11 2004/10/07 06:29:49 jolan Exp $

COMMENT=	"programmable ncurses-based AIM client"
DISTNAME=	pork-0.99.5
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ojnk/}

HOMEPAGE=	http://ojnk.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-irc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pork
	${INSTALL_DATA} ${WRKSRC}/{QUICK_START,README} \
		${PREFIX}/share/doc/pork
	${INSTALL_DATA} ${WRKSRC}/examples/blist.txt \
		${PREFIX}/share/examples/pork

.include <bsd.port.mk>
