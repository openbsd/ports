# $OpenBSD: Makefile,v 1.9 2001/05/09 23:26:16 pvalchev Exp $

COMMENT=	"gnu curses-based napster client"

KS=		1.4.4
PS=		ps9
DISTNAME=	nap-${KS}-${PS}
CATEGORIES=    	audio
NEED_VERSION=	1.401

HOMEPAGE=	http://theory.stanford.edu/~selinger/nap/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

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
