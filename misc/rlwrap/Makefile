# $OpenBSD: Makefile,v 1.12 2017/04/09 11:53:44 jasper Exp $

COMMENT=		generic readline wrapper for various programs

V =			0.43
DISTNAME=		rlwrap-$V
CATEGORIES=		misc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://github.com/hanslub42/rlwrap/releases/download/v$V/

WANTLIB=		c curses readline util

CONFIGURE_STYLE=	gnu

TEST_IS_INTERACTIVE=	Yes

do-test:
	cd ${WRKSRC} && src/rlwrap perl test/testclient

.include <bsd.port.mk>
