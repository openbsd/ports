# $OpenBSD: Makefile,v 1.19 2013/03/21 08:46:33 ajacoutot Exp $

COMMENT=		Quasar DV codec

DISTNAME=		libdv-1.0.0
REVISION=		0
CATEGORIES=		multimedia

HOMEPAGE=		http://libdv.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m popt pthread

MODULES=		devel/gettext

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libdv/}


SHARED_LIBS=		dv	5.0

LIB_DEPENDS=		devel/popt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-sdl \
			--disable-gtk \
			--with-x
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
