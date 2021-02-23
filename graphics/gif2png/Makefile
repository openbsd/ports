# $OpenBSD: Makefile,v 1.48 2021/02/23 19:39:25 sthen Exp $

COMMENT=		converts GIF images to the PNG format

DISTNAME=		gif2png-2.5.12
CATEGORIES=		graphics
HOMEPAGE=		http://www.catb.org/~esr/gif2png/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c m png z

MODULES=		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_BUILDDEP=		No
MODPY_ADJ_FILES=	web2png

MASTER_SITES=		http://www.catb.org/~esr/gif2png/

LIB_DEPENDS=		graphics/png

USE_GMAKE=		Yes

# we don't want the lang/python configure dance
CONFIGURE_STYLE=	none

CFLAGS +=		-I${LOCALBASE}/include
MAKE_FLAGS=		LDFLAGS="-L${LOCALBASE}/lib" \
			prefix=${WRKINST}${PREFIX}

NO_TEST=		Yes

.include <bsd.port.mk>
