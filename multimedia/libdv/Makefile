# $OpenBSD: Makefile,v 1.16 2010/11/19 07:23:13 espie Exp $

COMMENT=		Quasar DV codec

DISTNAME=		libdv-1.0.0
CATEGORIES=		multimedia

HOMEPAGE=		http://libdv.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m popt pthread

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libdv/}

USE_LIBTOOL=		Yes
USE_GROFF=		Yes

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
