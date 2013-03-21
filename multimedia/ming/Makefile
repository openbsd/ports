# $OpenBSD: Makefile,v 1.4 2013/03/21 08:46:33 ajacoutot Exp $

COMMENT=	Flash 4/5 movie output library

DISTNAME=	ming-0.4.4
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ming/}

SHARED_LIBS=	ming	0.1

HOMEPAGE=	http://www.libming.org/

# LGPLv2.1+ and GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c freetype m png ungif z

LIB_DEPENDS=	graphics/libungif \
		graphics/png
BUILD_DEPENDS=	devel/bison

YACC=		bison
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.65
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
