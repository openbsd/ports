# $OpenBSD: Makefile,v 1.12 2019/07/12 20:47:57 sthen Exp $

COMMENT=	Flash 4/5 movie output library

DISTNAME=	ming-0.4.5
REVISION=	2
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ming/}

SHARED_LIBS=	ming	0.1

HOMEPAGE=	http://www.libming.org/

# LGPLv2.1+ and GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c freetype m png gif z

LIB_DEPENDS=	graphics/giflib \
		graphics/png
BUILD_DEPENDS=	devel/bison

YACC=		bison
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
