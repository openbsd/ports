# $OpenBSD: Makefile,v 1.4 2001/04/08 13:46:55 reinhard Exp $

COMMENT=	'gnu curses-based napster client'

VER=		1.4.4-ps3
DISTNAME=	nap-${VER}
CATEGORIES=    	audio
NEED_VERSION=	1.363

HOMEPAGE=	http://theory.stanford.edu/~selinger/nap/

MAINTAINER=	Peter Valchev <pvalchev@home.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nap
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nap
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nap
	${INSTALL_DATA} ${WRKSRC}/nap.conf.dist ${PREFIX}/share/examples/nap

.include <bsd.port.mk>
