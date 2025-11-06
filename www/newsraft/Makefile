COMMENT=	lightweight feed reader for text terminals

DISTNAME=	newsraft-0.33
REVISION=	0
WRKDIST=	${WRKDIR}/newsraft

CATEGORIES=	www

HOMEPAGE=	https://codeberg.org/newsraft/newsraft

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c curl expat gumbo pthread sqlite3

SITES=		https://codeberg.org/newsraft/newsraft/archive/

BUILD_DEPENDS=	textproc/scdoc
LIB_DEPENDS=	databases/sqlite3 \
		net/curl \
		www/gumbo

NO_TEST=	Yes

MAKE_FILE=	makefile
MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
FAKE_FLAGS=	MANDIR=${PREFIX}/man \
		EXAMPLES_DIR=${PREFIX}/share/examples/newsraft

.include <bsd.port.mk>
