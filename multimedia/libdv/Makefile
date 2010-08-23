# $OpenBSD: Makefile,v 1.13 2010/08/23 07:51:22 jasper Exp $

COMMENT=		Quasar DV codec

DISTNAME=		libdv-1.0.0
CATEGORIES=		multimedia

HOMEPAGE=		http://libdv.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libdv/}

USE_LIBTOOL=		Yes

SHARED_LIBS=		dv	5.0

WANTLIB += c m pthread

LIB_DEPENDS=		popt::devel/popt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-sdl \
			--disable-gtk \
			--with-x
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
