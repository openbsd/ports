# $OpenBSD: Makefile,v 1.6 2001/04/17 10:44:03 reinhard Exp $

COMMENT=	'gnu curses-based napster client'

KS=		1.4.4
PS=		ps7
DISTNAME=	nap-${KS}-${PS}
CATEGORIES=    	audio
NEED_VERSION=	1.397

HOMEPAGE=	http://theory.stanford.edu/~selinger/nap/

MAINTAINER=	Peter Valchev <pvalchev@home.com>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nap
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nap

.include <bsd.port.mk>
