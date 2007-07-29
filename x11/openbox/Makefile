# $OpenBSD: Makefile,v 1.34 2007/07/29 13:02:32 ajacoutot Exp $

COMMENT=	small, fast & usable window manager

DISTNAME=	openbox-3.4.3
SHARED_LIBS+=	obparser	6.0 # .16.0
SHARED_LIBS+=	obrender	6.0 # .16.0
CATEGORIES=	x11

HOMEPAGE=	http://icculus.org/openbox/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://offload1.icculus.org/openbox/releases/

WANTLIB=	ICE SM X11 Xext Xft Xinerama Xrandr Xrender c \
		fontconfig freetype m z glib-2.0 gmodule-2.0 \
		gobject-2.0 Xau Xcursor Xdmcp Xfixes expat

MODULES=	devel/gettext
LIB_DEPENDS+=	pango-1.0,pangoxft-1.0,pangoft2-1.0::devel/pango \
		xml2.>=6::textproc/libxml \
		startup-notification-1.>=1::devel/startup-notification

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

pre-configure:
	@chmod +x ${WRKSRC}/install-sh

.include <bsd.port.mk>
