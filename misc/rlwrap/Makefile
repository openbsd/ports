COMMENT=		generic readline wrapper for various programs

V =			0.45.2
DISTNAME=		rlwrap-$V
CATEGORIES=		misc

# GPLv2
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://github.com/hanslub42/rlwrap/releases/download/v$V/

WANTLIB=		c curses readline util

CONFIGURE_STYLE=	gnu

TEST_IS_INTERACTIVE=	Yes

do-test:
	cd ${WRKSRC} && HOME=${WRKDIR} src/rlwrap perl test/testclient

.include <bsd.port.mk>
