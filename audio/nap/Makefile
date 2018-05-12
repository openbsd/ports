# $OpenBSD: Makefile,v 1.32 2018/05/12 10:00:24 espie Exp $

COMMENT=	gnu curses-based napster client

VERSION=	1.5.3
DISTNAME=	nap-${VERSION}
REVISION=	2
CATEGORIES=    	audio

HOMEPAGE=	http://nap.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@sightly.net>

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
