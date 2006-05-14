# $OpenBSD: Makefile,v 1.26 2006/05/14 00:26:13 brad Exp $

COMMENT=	"small, fast & usable window manager"

DISTNAME=	openbox-3.3-rc2
PKGNAME=	openbox-3.3.rc2
SHARED_LIBS=	obparser	3.0 \
		obrender	3.0
CATEGORIES=	x11
MASTER_SITES=	http://offload1.icculus.org/openbox/releases/

HOMEPAGE=	http://icculus.org/openbox/

MODULES=	devel/gettext
LIB_DEPENDS+=	glib-2.0.0.0::devel/glib2 \
		xml2.6::textproc/libxml \
		startup-notification-1.0.0::devel/startup-notification
BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xft Xinerama Xrandr Xrender Xxf86vm c \
			fontconfig freetype m z 

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/data/*.xml ${PREFIX}/share/openbox

.include <bsd.port.mk>
