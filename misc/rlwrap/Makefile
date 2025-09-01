COMMENT=	generic readline wrapper for various programs

V =		0.47.1
DISTNAME=	rlwrap-$V
CATEGORIES=	misc

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=	https://github.com/hanslub42/rlwrap/releases/download/v$V/

WANTLIB=	c curses readline ptytty

LIB_DEPENDS=	sysutils/libptytty

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

TEST_IS_INTERACTIVE=	Yes

do-test:
	cd ${WRKSRC} && HOME=${WRKDIR} src/rlwrap perl test/testclient

.include <bsd.port.mk>
