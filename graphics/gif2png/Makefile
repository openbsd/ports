# $OpenBSD: Makefile,v 1.45 2016/04/27 18:06:59 ajacoutot Exp $

COMMENT=		converts GIF images to the PNG format

DISTNAME=		gif2png-2.5.11
CATEGORIES=		graphics
HOMEPAGE=		http://www.catb.org/~esr/gif2png/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m png z

MODULES=		lang/python

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
