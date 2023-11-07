COMMENT=		generic readline wrapper for various programs

V =			0.46.1
DISTNAME=		rlwrap-$V
CATEGORIES=		misc

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/hanslub42/rlwrap/releases/download/$V/

WANTLIB=		c curses readline util

CONFIGURE_STYLE=	gnu

TEST_IS_INTERACTIVE=	Yes

do-test:
	cd ${WRKSRC} && HOME=${WRKDIR} src/rlwrap perl test/testclient

.include <bsd.port.mk>
