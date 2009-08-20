# $OpenBSD: Makefile,v 1.57 2009/08/20 07:03:15 ajacoutot Exp $

COMMENT-main=		screen saver and locker for the X Window System
COMMENT-data=		graphical demos (savers) for screensavers
COMMENT-gle=		OpenGL Extrusion library support for screensaver-data

V=			5.08
DISTNAME=		xscreensaver-${V}
PKGNAME-main=		${DISTNAME}p1
PKGNAME-data=		xscreensaver-data-${V}p0
PKGNAME-gle=		xscreensaver-gle-${V}p1

CATEGORIES=		x11

HOMEPAGE=		http://www.jwz.org/xscreensaver/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-main -data

WANTLIB=	GL GLU ICE SM X11 Xext Xmu Xpm Xt Xxf86vm c glib-2.0 \
		gmodule-2.0 gobject-2.0 m pthread

WANTLIB-main=	${WANTLIB} Xau Xcomposite Xcursor Xdamage Xdmcp Xfixes \
		Xi Xinerama Xrandr Xrender Xxf86misc atk-1.0 cairo \
		expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gdk_pixbuf_xlib-2.0 gio-2.0 glitz gtk-x11-2.0 jpeg \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png \
		pthread-stubs xcb xml2 z

WANTLIB-data=	${WANTLIB} jpeg util

MASTER_SITES=		${HOMEPAGE}

MODULES=		devel/gettext \
			textproc/intltool

# ${FILESDIR}/migrate-xscreensaver-config.sh needs xsltproc
BUILD_DEPENDS=		::textproc/libxslt

# note that we don't need desktop-file-utils for the -data subpackage
# because the desktop files it installs are under a subdirectory of
# ${LOCALBASE}/share/applications/
RUN_DEPENDS-main=	:desktop-file-utils-*:devel/desktop-file-utils \
			::x11/xscreensaver,-data

LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			glade-2.0::devel/libglade2

LIB_DEPENDS-data=	${MODGETTEXT_LIB_DEPENDS} \
			gdk_pixbuf-2.0,gdk_pixbuf_xlib-2.0::x11/gtk+2

USE_X11=		Yes
USE_GMAKE=		Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-hackdir="${PREFIX}/libexec/xscreensaver" \
			--with-x-app-defaults="${PREFIX}/lib/X11/app-defaults"
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# License issues with graphics/gle necessitate this
PSEUDO_FLAVORS=		no_gle
FLAVOR?=		no_gle

.if !${FLAVOR:L:Mno_gle}
MULTI_PACKAGES+=	-gle
LIB_DEPENDS-gle=	${MODGETTEXT_LIB_DEPENDS} \
			gle.>=3::graphics/gle \
			gdk_pixbuf-2.0,gdk_pixbuf_xlib-2.0::x11/gtk+2
RUN_DEPENDS-gle=	:xscreensaver-data-*:x11/xscreensaver,-data
WANTLIB-gle=		${WANTLIB}
CONFIGURE_ARGS+=	--with-gle
.else
CONFIGURE_ARGS+=	--without-gle
.endif

post-extract:
	cp ${FILESDIR}/migrate-xscreensaver-config.sh ${WRKSRC}/hacks/config
	cp ${FILESDIR}/xscreensaver-config.xsl ${WRKSRC}/hacks/config

post-install:
# remove conflict on games/circuit, misc/deco
	for i in circuit deco ; do \
		mv ${PREFIX}/man/man6/$${i}.6 ${PREFIX}/man/man6/x$${i}.6 ; \
		mv ${PREFIX}/libexec/xscreensaver/$${i} \
			${PREFIX}/libexec/xscreensaver/x$${i} && \
		mv ${PREFIX}/share/xscreensaver/config/$${i}.xml \
			${PREFIX}/share/xscreensaver/config/x$${i}.xml && \
		mv ${WRKSRC}/hacks/config/$${i}.xml \
			${WRKSRC}/hacks/config/x$${i}.xml ; done
	cd ${WRKSRC}/hacks/config && \
		for i in ${WRKSRC}/hacks/config/*.xml; do \
			/bin/sh migrate-xscreensaver-config.sh $${i} ; done
# conflict with x11/gnome/screensaver and is not needed by xscreensaver per se
	rm ${WRKSRC}/hacks/config/popsquares.desktop
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/screensavers/
	${INSTALL_DATA} ${WRKSRC}/hacks/config/*.desktop \
		${PREFIX}/share/applications/screensavers/

.include <bsd.port.mk>
