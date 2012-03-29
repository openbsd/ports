# $OpenBSD: Makefile,v 1.60 2012/03/29 18:57:41 ajacoutot Exp $

COMMENT=	extensible window manager

SHARED_ONLY=	Yes

VERSION=	1.8.2
DISTNAME=	sawfish-${VERSION}
CATEGORIES=	x11

REVISION=	1

MASTER_SITES=	http://download.tuxfamily.org/sawfish/
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	http://sawfish.wikia.com/

# GPLv2
# Sounds: Artistic License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	archivers/gtar \
		x11/rep-gtk>=0.90.7
RUN_DEPENDS=	devel/desktop-file-utils \
		x11/rep-gtk>=0.90.7 \
		x11/gtk+2,-guic

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xft Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat
WANTLIB += ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdk_pixbuf_xlib-2.0 gio-2.0 glib-2.0 gmodule-2.0 gmp
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pangox-1.0 pangoxft-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs rep xcb xcb-render xcb-shm
WANTLIB += z

MODULES=	devel/gettext

USE_GROFF =	Yes
USE_GMAKE=      Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-linguas \
		--without-kde4session \
		--with-gnome2session \
		--with-xdmsession
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I{X11BASE}/include -pthread" \
		LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/themes/Makefile.in

post-install:
	cd ${PREFIX}/share/sawfish/themes/ && \
		chown -R ${SHAREOWN}:${SHAREGRP} StyleTab

.include <bsd.port.mk>
