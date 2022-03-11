COMMENT=	text mode rss and atom newsreader
CATEGORIES=	www

GH_ACCOUNT=	msharov
GH_PROJECT=	snownews
GH_TAGNAME=	v1.8

# GPLv3 only
PERMIT_PACKAGE=	Yes

# C11
COMPILER=	base-clang ports-gcc

WANTLIB += c crypto curl curses iconv intl xml2

NO_TEST=	Yes

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	devel/gettext,-runtime \
		net/curl \
		textproc/libxml

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--builddir=${WRKDIR} --mandir=${PREFIX}/man
MAKE_ENV=		cflags="${CFLAGS}" ldflags="${LDFLAGS}"

# Needed for cchar_t, setcchar() and getcchar()
CFLAGS+=	-D_XOPEN_SOURCE_EXTENDED
# Fix linking errors due to upstream build system
# not being able to find proper LDFLAGS for ncurses
LDFLAGS+=	-lncursesw

.include <bsd.port.mk>
