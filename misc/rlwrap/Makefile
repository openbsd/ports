COMMENT=	generic readline wrapper for various programs

V =		0.48
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

# doesn't work well under ports infrastructure; doesn't respond to
# input correctly and is hard to kill. to run manually;
#   cd `make show=WRKSRC`; src/rlwrap perl test/testclient
NO_TEST=	Yes

.include <bsd.port.mk>
