# $OpenBSD: Makefile,v 1.9 2013/09/27 13:00:24 jasper Exp $

COMMENT=	Flash 4/5 movie output library

DISTNAME=	ming-0.4.5
REVISION=	1
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ming/}

SHARED_LIBS=	ming	0.1

HOMEPAGE=	http://www.libming.org/

# LGPLv2.1+ and GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c freetype m png gif z

LIB_DEPENDS=	graphics/giflib \
		graphics/png
BUILD_DEPENDS=	devel/bison

YACC=		bison
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
