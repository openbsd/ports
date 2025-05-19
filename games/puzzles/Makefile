COMMENT =	collection of puzzles games

DISTNAME =	puzzles-20250518
CATEGORIES =	games

SITES =		https://rhaalovely.net/stuff/
HOMEPAGE =	https://www.chiark.greenend.org.uk/~sgtatham/puzzles/

#gitweb generates tarballs on the fly with varying timestamps
GIT_COMMIT =	520b5871aed32c8b751183311b9131c046eab2c7
GIT_COMMIT_SHORT = 520b587
GITWEB_URL =	https://git.tartarus.org/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += intl m pango-1.0 pangocairo-1.0 harfbuzz

WRKDIST =	${WRKDIR}/puzzles-${GIT_COMMIT_SHORT}
USE_GMAKE =	yes
LIB_DEPENDS =	x11/gtk+3
RUN_DEPENDS =	devel/desktop-file-utils devel/xdg-utils \
		x11/gtk+4,-guic

MODULES =	devel/cmake
CONFIGURE_ARGS=	-DPUZZLES_GTK_VERSION=3 -DNAME_PREFIX=puzzle-
BUILD_DEPENDS =	textproc/halibut \
		graphics/ImageMagick

dist:
	ftp -o /usr/ports/distfiles/${DISTNAME}.tar.gz "${GITWEB_URL}?p=simon/puzzles.git;a=snapshot;h=${GIT_COMMIT};sf=tgz"

# generates puzzles.txt
post-build:
	cd ${WRKSRC} && ${MAKE} -f Makefile.doc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/puzzles/
	${INSTALL_DATA} ${WRKSRC}/puzzles.txt ${PREFIX}/share/doc/puzzles/

.include <bsd.port.mk>
