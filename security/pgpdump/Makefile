# $OpenBSD: Makefile,v 1.18 2009/01/27 02:04:57 okan Exp $

COMMENT=	PGP packet visualizer

DISTNAME=	pgpdump-0.26
CATEGORIES=	security

HOMEPAGE=	http://www.mew.org/~kazu/proj/pgpdump/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c z

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=	gnu dest

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pgpdump ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pgpdump.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
