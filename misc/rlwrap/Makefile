# $OpenBSD: Makefile,v 1.9 2014/04/13 01:01:39 naddy Exp $

COMMENT=		generic readline wrapper for various programs

DISTNAME=		rlwrap-0.37
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
