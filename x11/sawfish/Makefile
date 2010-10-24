# $OpenBSD: Makefile,v 1.50 2010/10/24 21:15:34 ajacoutot Exp $

COMMENT=	extensible window manager

SHARED_ONLY=	Yes

VERSION=	1.6.3
DISTNAME=	sawfish-${VERSION}
REVISION=	3
CATEGORIES=	x11

MASTER_SITES=	http://download.tuxfamily.org/sawfish/sawfish/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://sawfish.wikia.com/

# GPLv2
# Sounds: Artistic License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	:rep-gtk->=0.90.4p0:x11/rep-gtk
RUN_DEPENDS=	::devel/desktop-file-utils \
		:rep-gtk->=0.90.4p0:x11/rep-gtk

WANTLIB += ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xft Xi Xinerama Xrandr Xrender atk-1.0 c cairo
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdk_pixbuf_xlib-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangox-1.0 pangoxft-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rep xcb z

MODULES=	devel/gettext

GNU_ARCH=	${MACHINE_ARCH:S/amd64/x86_64/}-unknown-openbsd${OSREV}
SUBST_VARS=	GNU_ARCH VERSION

USE_GROFF =	Yes
USE_GMAKE=      Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-linguas
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I{X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG_PATH="/usr/X11R6/lib/pkgconfig"

NO_REGRESS=	Yes

.include <bsd.port.mk>
