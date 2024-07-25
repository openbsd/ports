COMMENT=	screen saver and locker for the X Window System

# No driver for BSD Authentication so xscreensaver-auth uses the
# driver/passwd-pwent.c backend using getpwnam_shadow() which is using
# setuid root for access to the shadow password db. For some reason
# unlock fails to ask for a password with just setgid _shadow - maybe
# related to setgroups() failing, maybe something else.
#
# Ideally this wants a bsdauth driver to be written, change to being
# installed setgid auth, and figure out any issues resulting.
DISTNAME =	xscreensaver-6.09

CATEGORIES=	x11

HOMEPAGE=	https://www.jwz.org/xscreensaver/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += EGL GL GLU ICE SM X11 Xext Xft Xi Xinerama Xrandr Xrender
WANTLIB += Xt Xxf86vm atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 gle glib-2.0 gmodule-2.0 gobject-2.0 gtk-3
WANTLIB += harfbuzz iconv intl jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pthread util xml2

SITES=		${HOMEPAGE}

COMPILER=	base-clang ports-gcc
DEBUG_PACKAGES=	${BUILD_PACKAGES}

MODULES=	textproc/intltool

RUN_DEPENDS=	devel/desktop-file-utils

LIB_DEPENDS=	graphics/gle \
		x11/gtk+3

# ${FILESDIR}/migrate-xscreensaver-config.sh needs xsltproc
BUILD_DEPENDS+=	textproc/libxslt

# see pre-configure
BUILD_DEPENDS+=	devel/xdg-utils
RUN_DEPENDS+=	devel/xdg-utils

USE_GMAKE=	Yes
NO_TEST=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= --with-app-defaults="${PREFIX}/lib/X11/app-defaults" \
		--without-pam
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	install_prefix=${WRKINST}

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
