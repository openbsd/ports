COMMENT =		lossless PNG optimizer
DISTNAME =		optipng-0.7.7
CATEGORIES =		graphics
REVISION =		0

HOMEPAGE =		http://optipng.sourceforge.net/

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += c m png z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=optipng/}

LIB_DEPENDS =		graphics/png

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	-with-system-zlib -with-system-libpng
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/optipng/optipng ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/src/optipng/man/optipng.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
