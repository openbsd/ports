# $OpenBSD: Makefile,v 1.8 2014/12/06 23:05:11 landry Exp $

COMMENT =	collection of puzzles games

DISTNAME =	puzzles-20141206
CATEGORIES =	games

MASTER_SITES =	http://rhaalovely.net/stuff/
HOMEPAGE =	http://www.chiark.greenend.org.uk/~sgtatham/puzzles/

#gitweb generates tarballs on the fly with varying timestamps
GIT_COMMIT =	c2f111dd556320cfbf28f1aa6bc640a709d41710
GIT_COMMIT_SHORT = c2f111d
GITWEB_URL =	http://tartarus.org/~simon-git/gitweb/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WRKDIST =	${WRKDIR}/puzzles
USE_GMAKE =	yes
MAKE_FILE =	Makefile.gtk
MODULES =	devel/gettext
LIB_DEPENDS =	x11/gtk+2
RUN_DEPENDS =	devel/desktop-file-utils devel/xdg-utils \
		x11/gtk+2,-guic
MAKE_FLAGS =	CC="${CC}"

WANTLIB += atk-1.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gtk-x11-2.0 m pthread z

# needs textproc/halibut, convert from ImageMagick, and a running X
dist:
	ftp -o - "${GITWEB_URL}?p=puzzles.git;a=snapshot;h=${GIT_COMMIT};sf=tgz" | \
	tar -C /tmp -xzf - && \
		cd /tmp/puzzles-${GIT_COMMIT_SHORT} && \
		perl mkfiles.pl && \
		patch -i ${PATCHDIR}/patch-Makefile_gtk && \
		${GMAKE} -f Makefile.gtk && \
		${GMAKE} -C icons pngicons && \
		sh makedist.sh
	mv /tmp/puzzles.tar.gz /usr/ports/distfiles/${DISTNAME}.tar.gz
	rm -Rf /tmp/puzzles-${GIT_COMMIT_SHORT}

.include <bsd.port.mk>
