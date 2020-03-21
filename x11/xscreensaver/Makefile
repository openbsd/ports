# $OpenBSD: Makefile,v 1.105 2020/03/21 21:07:02 sthen Exp $

COMMENT=		screen saver and locker for the X Window System

# XXX x11/kde4/artwork plist may need regen if an update adds a new hack.
DISTNAME=		xscreensaver-5.44

CATEGORIES=		x11

HOMEPAGE=		https://www.jwz.org/xscreensaver/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += GL GLU ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xft Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += c cairo fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gdk_pixbuf_xlib-2.0 gio-2.0 glade-2.0 gle glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 harfbuzz intl jpeg
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread util
WANTLIB += xml2 z

MASTER_SITES=		${HOMEPAGE}

COMPILER=		base-clang ports-gcc

MODULES=		textproc/intltool

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
NO_TEST=		Yes

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS=		--with-hackdir="${PREFIX}/libexec/xscreensaver" \
			--with-x-app-defaults="${PREFIX}/lib/X11/app-defaults" \
			--without-pam
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		install_prefix=${WRKINST}

pre-configure:
	sed -i 's,gnome-open,xdg-open,g' ${WRKSRC}/configure

post-install:
# remove conflicts (misc/deco, games/circuit)
.for i in deco circuit
	mv ${PREFIX}/man/man6/$i.6 ${PREFIX}/man/man6/xscreensaver-$i.6
.endfor
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
