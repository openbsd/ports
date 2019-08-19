# $OpenBSD: Makefile,v 1.19 2019/08/19 18:12:31 cwen Exp $

COMMENT =	collection of puzzles games

DISTNAME =	puzzles-20190415
REVISION =	0
CATEGORIES =	games

MASTER_SITES =	https://rhaalovely.net/stuff/
HOMEPAGE =	https://www.chiark.greenend.org.uk/~sgtatham/puzzles/

#gitweb generates tarballs on the fly with varying timestamps
GIT_COMMIT =	e2135d51c51a39f05e2c20c70111b27c15952803
GIT_COMMIT_SHORT = e2135d5
GITWEB_URL =	https://git.tartarus.org/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += intl m pango-1.0 pangocairo-1.0 pthread

WRKDIST =	${WRKDIR}/puzzles-${GIT_COMMIT_SHORT}
USE_GMAKE =	yes
LIB_DEPENDS =	x11/gtk+3
RUN_DEPENDS =	devel/desktop-file-utils devel/xdg-utils \
		x11/gtk+3,-guic
MAKE_FLAGS =	CC="${CC}"

CONFIGURE_STYLE=autoreconf
CONFIGURE_ARGS=	--with-gtk=3
AUTOCONF_VERSION=2.69
AUTOMAKE_VERSION=1.15
BUILD_DEPENDS =	textproc/halibut \
		graphics/ImageMagick \
		${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

dist:
	ftp -o /usr/ports/distfiles/${DISTNAME}.tar.gz "${GITWEB_URL}?p=simon/puzzles.git;a=snapshot;h=${GIT_COMMIT};sf=tgz"

# generates Makefile.am so needs to run before autoreconf
do-gen:
	cd ${WRKSRC} && perl mkfiles.pl

# generates icons & puzzles.txt
post-build:
	cd ${WRKSRC} && ${GMAKE} -C icons pngicons
	cd ${WRKSRC} && ${MAKE} -f Makefile.doc

GAMES=Blackbox Bridges Cube Dominosa Fifteen Filling Flip Flood Galaxies Guess \
Inertia Keen Lightup Loopy Magnets Map Mines Net Netslide Palisade Pattern \
Pearl Pegs Range rect Samegame Signpost Singles Sixteen Slant Solo Tents Towers \
Tracks twiddle Undead Unequal Unruly Untangle

post-install:
.for d in 16 32 48
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/${d}x${d}/apps/
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/puzzles/
	${INSTALL_DATA} ${WRKSRC}/puzzles.txt ${PREFIX}/share/doc/puzzles/

.for i in ${GAMES}
	mv ${PREFIX}/bin/${i:L} ${PREFIX}/bin/puzzle-${i:L}
	echo "[Desktop Entry]\nVersion=1.0\nName=${i}\nComment=${i} puzzle\nExec=puzzle-${i:L}\nIcon=puzzle-${i:L}\nType=Application\nCategories=Game;LogicGame;" > ${PREFIX}/share/applications/puzzle-${i:L}.desktop
. for d in 16 32 48
		${INSTALL_DATA} ${WRKSRC}/icons/${i:L}-${d}d24.png ${PREFIX}/share/icons/hicolor/${d}x${d}/apps/puzzle-${i:L}.png
.endfor
.endfor

.include <bsd.port.mk>
