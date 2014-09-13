# $OpenBSD: Makefile,v 1.10 2014/09/13 09:34:48 jasper Exp $

COMMENT=		generic readline wrapper for various programs

DISTNAME=		rlwrap-0.41
CATEGORIES=		misc

HOMEPAGE=		http://utopia.knoware.nl/~hlub/uck/rlwrap/

MASTER_SITES=		${HOMEPAGE}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c curses readline util

CONFIGURE_STYLE=	gnu

TEST_IS_INTERACTIVE=	Yes

do-test:
	cd ${WRKSRC} && src/rlwrap perl test/testclient

.include <bsd.port.mk>
