COMMENT=	GNUstep gui backend

GH_TAGNAME=     0.31.0
GH_ACCOUNT=     gnustep
GH_PROJECT=     libs-back
DISTNAME=       gnustep-back-${GH_TAGNAME}

CATEGORIES=	devel

HOMEPAGE=	http://www.gnustep.org/
#SITES=	${SITE_GNUSTEP:=core/}
SITES=  https://github.com/gnustep/libs-back/releases/download/back-0_31_0/

MODULES =	x11/gnustep
MODGNUSTEP_NEEDS_BACK=	No

WANTLIB += 	Xft Xrender cairo Xfixes Xcursor fontconfig
WANTLIB += 	freetype GL X11 Xext Xmu Xt z Xrandr
WANTLIB += ${COMPILER_LIBCXX}

LIB_DEPENDS=	graphics/cairo

BACKENDV=	${GH_TAGNAME:C/([0-9])*[.]([0-9]*).*/\1\2/1}
SUBST_VARS=	BACKENDV

WRKDIST=	${WRKDIR}/${DISTNAME}

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lm"
CONFIGURE_ARGS=	--with-x \
		--disable-glitz \
		--enable-graphics=cairo

.include <bsd.port.mk>
