COMMENT=	identify or delete duplicate files

V=		2.3.1
DISTNAME=	fdupes-$V
CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/adrianlopezroche/fdupes
SITES=		${HOMEPAGE}/releases/download/v$V/

MAINTAINER =	Martin Ziemer <horrad@horrad.de>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += c curses pcre2-32 sqlite3

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS=	databases/sqlite3 \
		devel/pcre2

.include <bsd.port.mk>
