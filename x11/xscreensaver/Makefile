# $OpenBSD: Makefile,v 1.82 2014/07/21 20:11:37 zhuk Exp $

COMMENT=		screen saver and locker for the X Window System

DISTNAME=		xscreensaver-5.29

CATEGORIES=		x11

HOMEPAGE=		http://www.jwz.org/xscreensaver/

# After updating this port, remember to make update-plist in
# x11/kde/artwork and x11/kde4/artwork, too.

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL GLU ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xmu Xpm Xrandr Xrender Xt Xxf86misc Xxf86vm
WANTLIB += atk-1.0 c cairo fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdk_pixbuf_xlib-2.0 gio-2.0 glade-2.0 gle glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pthread util xml2 z

MASTER_SITES=		${HOMEPAGE}

MODULES=		devel/gettext \
			textproc/intltool

RUN_DEPENDS=		devel/desktop-file-utils

LIB_DEPENDS=		devel/libglade2 \
			graphics/gdk-pixbuf2 \
			graphics/gle

# ${FILESDIR}/migrate-xscreensaver-config.sh needs xsltproc
BUILD_DEPENDS +=	textproc/libxslt

# see pre-configure
BUILD_DEPENDS +=	devel/xdg-utils
RUN_DEPENDS +=		devel/xdg-utils

USE_GMAKE=		Yes
USE_GROFF=		Yes
NO_TEST=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-hackdir="${PREFIX}/libexec/xscreensaver" \
			--with-x-app-defaults="${PREFIX}/lib/X11/app-defaults" \
			--without-pam
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		install_prefix=${WRKINST}

pre-configure:
	perl -pi -e 's,gnome-open,xdg-open,g' ${WRKSRC}/configure

post-install:
# remove conflict on misc/deco
	mv ${PREFIX}/man/man6/deco.6 ${PREFIX}/man/man6/xscrensaver-deco.6

# create dot.desktop files from xscreensaver xml files for use
# by freedesktop compliant screensavers
	cp ${FILESDIR}/migrate-xscreensaver-config.sh ${WRKSRC}/hacks/config
	cp ${FILESDIR}/xscreensaver-config.xsl ${WRKSRC}/hacks/config
	cd ${WRKSRC}/hacks/config && \
		for i in ${WRKSRC}/hacks/config/*.xml; do \
			/bin/sh migrate-xscreensaver-config.sh $${i} ; done
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/screensavers/
	${INSTALL_DATA} ${WRKSRC}/hacks/config/*.desktop \
		${PREFIX}/share/applications/screensavers/

.include <bsd.port.mk>
