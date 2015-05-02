# $OpenBSD: Makefile,v 1.21 2015/05/02 13:03:14 ajacoutot Exp $

COMMENT=		Quasar DV codec

DISTNAME=		libdv-1.0.0
REVISION=		2

CATEGORIES=		multimedia

SHARED_LIBS +=  dv                   5.0      # 4.3

HOMEPAGE=		http://libdv.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m popt pthread

MODULES=		devel/gettext

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libdv/}

LIB_DEPENDS=		devel/popt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-sdl \
			--disable-gtk \
			--with-x
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
