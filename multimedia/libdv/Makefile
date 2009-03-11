# $OpenBSD: Makefile,v 1.12 2009/03/11 09:29:33 sthen Exp $

COMMENT=		Quasar DV codec

DISTNAME=		libdv-0.104
PKGNAME=		${DISTNAME}p4
CATEGORIES=		multimedia

HOMEPAGE=		http://libdv.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libdv/}

USE_LIBTOOL=		Yes

SHARED_LIBS=		dv	4.2

WANTLIB += c m pthread sndio

LIB_DEPENDS=		popt::devel/popt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-sdl \
			--disable-gtk \
			--with-x
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
