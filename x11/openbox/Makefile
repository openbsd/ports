# $OpenBSD: Makefile,v 1.30 2006/10/26 21:40:26 jasper Exp $

COMMENT=	"small, fast & usable window manager"

DISTNAME=	openbox-3.3.1
SHARED_LIBS=	obparser	3.0 \
		obrender	3.0
CATEGORIES=	x11
MASTER_SITES=	http://offload1.icculus.org/openbox/releases/

HOMEPAGE=	http://icculus.org/openbox/

MODULES=	devel/gettext
LIB_DEPENDS+=	pango-1.0,pangoxft-1.0,pangoft2-1.0::devel/pango \
		xml2.>=6::textproc/libxml
BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xft Xinerama Xrandr Xrender c \
			fontconfig freetype m z glib-2.0 gmodule-2.0 \
			gobject-2.0

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

post-install:
	${INSTALL_DATA} ${WRKSRC}/data/*.xml ${PREFIX}/share/openbox

.include <bsd.port.mk>
