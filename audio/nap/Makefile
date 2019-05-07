# $OpenBSD: Makefile,v 1.33 2019/05/07 17:04:58 danj Exp $

COMMENT=	gnu curses-based napster client

VERSION=	1.5.3
DISTNAME=	nap-${VERSION}
REVISION=	3
CATEGORIES=    	audio

HOMEPAGE=	http://nap.sourceforge.net/

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ncurses

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nap/} \
		http://www.mathstat.dal.ca/~selinger/nap/dist/
	      	
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nap
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nap

.include <bsd.port.mk>
