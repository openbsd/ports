# $OpenBSD: Makefile,v 1.14 2003/11/12 03:50:22 brad Exp $

COMMENT=	"small, fast & usable window manager"

DISTNAME=	openbox-3.0
CATEGORIES=	x11
MASTER_SITES=	http://icculus.org/openbox/releases/

HOMEPAGE=	http://www.openbox.org/

MAINTAINER=	Brad Smith <brad@openbsd.org>

MODULES=	gettext
LIB_DEPENDS+=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
		xml2.6::textproc/libxml
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
