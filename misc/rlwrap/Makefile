# $OpenBSD: Makefile,v 1.14 2019/07/12 20:47:53 sthen Exp $

COMMENT=		generic readline wrapper for various programs

V =			0.43
DISTNAME=		rlwrap-$V
CATEGORIES=		misc
REVISION=		0

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://github.com/hanslub42/rlwrap/releases/download/v$V/

WANTLIB=		c curses readline util

CONFIGURE_STYLE=	gnu

TEST_IS_INTERACTIVE=	Yes

do-test:
	cd ${WRKSRC} && src/rlwrap perl test/testclient

.include <bsd.port.mk>
