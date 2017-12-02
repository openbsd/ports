# $OpenBSD: Makefile,v 1.24 2017/12/02 18:42:14 ajacoutot Exp $

COMMENT=		PGP packet visualizer

DISTNAME=		pgpdump-0.32
CATEGORIES=		security

HOMEPAGE=		http://www.mew.org/~kazu/proj/pgpdump/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c z

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	gnu

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pgpdump ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/pgpdump.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
