# $OpenBSD: Makefile,v 1.29 2013/03/10 22:55:04 espie Exp $

COMMENT=	gnu curses-based napster client

VERSION=	1.5.3
DISTNAME=	nap-${VERSION}
REVISION=	0
CATEGORIES=    	audio

HOMEPAGE=	http://nap.sourceforge.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c ncurses

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nap/} \
		http://www.mathstat.dal.ca/~selinger/nap/dist/
	      	
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
USE_GROFF =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nap
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nap

.include <bsd.port.mk>
