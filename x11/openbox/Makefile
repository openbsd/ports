# $OpenBSD: Makefile,v 1.23 2005/12/26 18:45:10 naddy Exp $

COMMENT=	"small, fast & usable window manager"

DISTNAME=	openbox-3.2
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	obparser	2.0 \
		obrender	2.0
CATEGORIES=	x11
MASTER_SITES=	http://icculus.org/openbox/releases/

HOMEPAGE=	http://www.openbox.org/

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

# MODGNU_SHARED_LIBS can't handle idiosyncratic naming convention
.for n v in ${SHARED_LIBS}
MAKE_FLAGS+=	${n:S/^ob//}_lib$n_la_LDFLAGS='-version-info ${v:S/./:/}:0'
.endfor

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/data/*.xml ${PREFIX}/share/openbox

.include <bsd.port.mk>
