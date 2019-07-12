# $OpenBSD: Makefile,v 1.25 2019/07/12 20:47:56 sthen Exp $

COMMENT=		Quasar DV codec

DISTNAME=		libdv-1.0.0
REVISION=		3

CATEGORIES=		multimedia

SHARED_LIBS +=  dv                   5.0      # 4.3

HOMEPAGE=		http://libdv.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB =  c iconv intl m popt pthread

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=libdv/}

LIB_DEPENDS=		devel/popt

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-sdl \
			--disable-gtk \
			--with-x
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if ${MACHINE_ARCH} == "i386"
MAKE_FLAGS+=		libdv_la_LIBADD=-Wl,-znotext
.endif

.include <bsd.port.mk>
