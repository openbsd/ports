# $OpenBSD: Makefile,v 1.19 2004/08/10 11:16:44 xsa Exp $

COMMENT=	"small, fast & usable window manager"

DISTNAME=	openbox-3.2
CATEGORIES=	x11
MASTER_SITES=	http://icculus.org/openbox/releases/

HOMEPAGE=	http://www.openbox.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

MODULES=	devel/gettext
LIB_DEPENDS+=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		xml2.6::textproc/libxml \
		startup-notification-1.0.0::devel/startup-notification
BUILD_DEPENDS+=	:pkgconfig-*:devel/pkgconfig

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/data/*.xml ${PREFIX}/share/openbox

.include <bsd.port.mk>
