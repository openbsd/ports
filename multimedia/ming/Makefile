# $OpenBSD: Makefile,v 1.1.1.1 2011/06/19 17:45:54 kili Exp $

COMMENT=	Flash 4/5 movie output library

DISTNAME=	ming-0.4.3
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ming/}

SHARED_LIBS=	ming	0.0

HOMEPAGE=	http://www.libming.org/

# LGPLv2.1+ and GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c freetype m png ungif z

LIB_DEPENDS=	graphics/libungif \
		graphics/png
BUILD_DEPENDS=	devel/bison

YACC=		bison
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.61
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
