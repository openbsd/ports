# $OpenBSD: Makefile,v 1.21 2005/10/01 23:44:34 brad Exp $

COMMENT=	"small, fast & usable window manager"

DISTNAME=	openbox-3.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11
MASTER_SITES=	http://icculus.org/openbox/releases/

HOMEPAGE=	http://www.openbox.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

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
