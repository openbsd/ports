# $OpenBSD: Makefile,v 1.14 2018/06/27 21:03:49 espie Exp $

COMMENT =	collection of puzzles games

DISTNAME =	puzzles-20170507
CATEGORIES =	games
REVISION =	1

MASTER_SITES =	https://rhaalovely.net/stuff/
HOMEPAGE =	http://www.chiark.greenend.org.uk/~sgtatham/puzzles/

#gitweb generates tarballs on the fly with varying timestamps
GIT_COMMIT =	cce13ed7129a06fe7454f9e10906cb6663de45f7
GIT_COMMIT_SHORT = cce13ed
GITWEB_URL =	https://git.tartarus.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB =  X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread z

WRKDIST =	${WRKDIR}/puzzles
USE_GMAKE =	yes
MAKE_FILE =	Makefile.gtk
LIB_DEPENDS =	x11/gtk+2
RUN_DEPENDS =	devel/desktop-file-utils devel/xdg-utils \
		x11/gtk+3,-guic
MAKE_FLAGS =	CC="${CC}"


# needs textproc/halibut, convert from ImageMagick, and a running X
dist:
	ftp -o - "${GITWEB_URL}?p=simon/puzzles.git;a=snapshot;h=${GIT_COMMIT};sf=tgz" | \
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
