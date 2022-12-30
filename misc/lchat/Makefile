COMMENT=	line oriented chat frontend for ii
DISTNAME=	lchat-1.0

CATEGORIES=	misc
HOMEPAGE=	https://github.com/younix/lchat
MAINTAINER=	Jan Klemkow <j.klemkow@wemelug.de>

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB +=	c grapheme

MASTER_SITES =	https://dl.suckless.org/tools/

LIB_DEPENDS =	textproc/libgrapheme

CFLAGS +=	-I${LOCALBASE}/include
MAKE_FLAGS +=	CFLAGS="${CFLAGS}"

.include <bsd.port.mk>
