# $OpenBSD: Makefile,v 1.2 2003/03/31 01:22:01 margarida Exp $

COMMENT=	"programmable, ncurses-based AIM client"
DISTNAME=	pork-0.6.0
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ojnk/}

HOMEPAGE=	http://ojnk.sourceforge.net/

MAINTAINER=	Jolan Luff <jolan@cryptonomicon.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pork
	${INSTALL_DATA} ${WRKSRC}/{QUICK_START,README} \
		${PREFIX}/share/doc/pork
	${INSTALL_DATA} ${WRKSRC}/examples/blist.txt \
		${PREFIX}/share/examples/pork

.include <bsd.port.mk>
