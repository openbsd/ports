COMMENT=	text mode rss and atom newsreader
CATEGORIES=	www

DISTNAME=	snownews-1.11

# GPLv3 only
PERMIT_PACKAGE=	Yes

SITES=		${SITE_SOURCEFORGE:=snownews/}
FIX_EXTRACT_PERMISSIONS=	Yes

# C11
COMPILER=	base-clang ports-gcc

WANTLIB += c crypto curl curses intl xml2

NO_TEST=	Yes

USE_GMAKE=	Yes

BUILD_DEPENDS=	devel/gettext,-tools
LIB_DEPENDS=	devel/gettext,-runtime \
		net/curl \
		textproc/libxml

CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--builddir=${WRKDIR} --mandir=${PREFIX}/man
MAKE_ENV=		cflags="${CFLAGS}" ldflags="${LDFLAGS}"

# Fix linking errors due to upstream build system
# not being able to find proper LDFLAGS for ncurses
LDFLAGS+=	-lncursesw

.include <bsd.port.mk>
