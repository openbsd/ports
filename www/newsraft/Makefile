COMMENT=	lightweight feed reader for text terminals

DISTNAME=	newsraft-0.25
WRKDIST=	${WRKDIR}/newsraft

CATEGORIES=	www

HOMEPAGE=	https://codeberg.org/grisha/newsraft

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c curl curses expat gumbo pthread sqlite3 yajl

SITES=		https://codeberg.org/grisha/newsraft/archive/

BUILD_DEPENDS=	textproc/scdoc
LIB_DEPENDS=	databases/sqlite3 \
		net/curl \
		devel/libyajl \
		www/gumbo

NO_TEST=	Yes

MAKE_FILE=	makefile
MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
FAKE_FLAGS=	MANDIR=${PREFIX}/man \
		EXAMPLES_DIR=${PREFIX}/share/examples/newsraft

.include <bsd.port.mk>
