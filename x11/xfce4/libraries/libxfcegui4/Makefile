# $OpenBSD: Makefile,v 1.4 2004/12/16 22:05:10 alek Exp $

COMMENT=	"widget library required by xfce4 and xfwm4"
DISTNAME=	libxfcegui4-${V}

LIB_DEPENDS=	${GTK2} \
		${UTIL}

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

WANTLIB=	ICE SM X11 Xcursor Xext Xft Xinerama Xrender atk-1.0.0.0 \
		fontconfig freetype glib-2.0.0.0 gmodule-2.0.0.0 \
		gobject-2.0.0.0 m pango-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0

.include <bsd.port.mk>
