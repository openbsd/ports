# $OpenBSD: Makefile,v 1.20 2020/03/20 16:44:24 naddy Exp $

COMMENT =	visual programming environment and toolkit

DISTNAME =	${PKGNAME}.src
PKGNAME =	scratch-1.4.0.7
REVISION =	10
CATEGORIES =	graphics
HOMEPAGE =	http://scratch.mit.edu/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# GPLv2 / MIT / Creative Commons (CC BY-SA 3.0)
PERMIT_PACKAGE =	Yes

WANTLIB =  X11 Xau Xdmcp Xext Xrender cairo expat ffi fontconfig
WANTLIB += freetype fribidi glib-2.0 gobject-2.0 graphite2 harfbuzz
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png xcb xcb-render xcb-shm z

MASTER_SITES =	http://download.scratch.mit.edu/
# not actually needed to build, but avoid wasting time on !squeak arches.
BUILD_DEPENDS =	lang/squeak/vm

RUN_DEPENDS =	lang/squeak/vm \
		devel/desktop-file-utils \
		devel/xdg-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

LIB_DEPENDS =	devel/pango
SEPARATE_BUILD = Yes
NO_TEST =	Yes
CFLAGS +=	-Wall -fPIC -shared
SUBST_VARS =	SC_DIR

SC_DIR =	${PREFIX}/share/scratch

post-extract:
	gunzip -o ${WRKSRC}/src/man/scratch.1 ${WRKSRC}/src/man/scratch.1.gz

do-build:
	@${SUBST_CMD} -m 555 -c ${FILESDIR}/scratch ${WRKBUILD}/scratch
	@${SUBST_CMD} -c ${WRKSRC}/src/man/scratch.1 ${WRKBUILD}/scratch.1
	cd ${WRKSRC}/src/plugins/unicode && ${CC} ${CFLAGS} *.c \
		`pkg-config --cflags --libs pangocairo` \
		-o ${WRKBUILD}/UnicodePlugin
.for p in Scratch Camera
	cd ${WRKSRC}/src/plugins/${p:L} && ${CC} ${CFLAGS} *.c \
		-o ${WRKBUILD}/${p}Plugin
.endfor

do-install:
	${INSTALL_DATA_DIR} ${SC_DIR}/Plugins
.for p in Unicode Scratch Camera
	${INSTALL_DATA} ${WRKBUILD}/${p}Plugin ${SC_DIR}/Plugins/${p}Plugin
.endfor
.for f in Help locale Media Projects Scratch.image Scratch.ini \
		LICENSE gpl-2.0.txt
	cp -r ${WRKSRC}/$f ${SC_DIR}/$f
.endfor
	chown -R ${SHAREOWN}:${SHAREGRP} ${SC_DIR}
	find ${SC_DIR} -type d -exec chmod 755 {} + -o \
		-type f -exec chmod 444 {} +
	${INSTALL_SCRIPT} ${WRKBUILD}/scratch ${PREFIX}/bin/scratch
	${INSTALL_MAN_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/scratch.1 ${PREFIX}/man/man1/scratch.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/src/scratch.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/mime/packages
	${INSTALL_DATA} ${WRKSRC}/src/scratch.xml \
		${PREFIX}/share/mime/packages
.for d in 128x128 32x32 48x48
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/$d/apps
	${INSTALL_DATA} ${WRKSRC}/src/icons/$d/scratch* \
		${PREFIX}/share/icons/hicolor/$d/apps
.endfor
.for d in 128x128 48x48
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/$d/mimetypes
	${INSTALL_DATA} ${WRKSRC}/src/icons/$d/*mime* \
		${PREFIX}/share/icons/hicolor/$d/mimetypes
.endfor

.include <bsd.port.mk>
