COMMENT=	VI Editor Like Emacs
DISTNAME=	vile-9.8y
CATEGORIES=	editors
HOMEPAGE=	https://invisible-island.net/vile/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB +=	c curses iconv

SITES=		https://invisible-island.net/archives/vile/current/ \
		https://invisible-mirror.net/archives/vile/current/ \
		ftp://ftp.invisible-island.net/vile/current/

EXTRACT_SUFX=	.tgz

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+= --with-builtin-filters \
		--with-screen=ncursesw
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include"

LIB_DEPENDS=	converters/libiconv
MAKE_FILE=	makefile
NO_TEST=	yes

.include <bsd.port.mk>
