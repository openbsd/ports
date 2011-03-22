# $OpenBSD: Makefile,v 1.24 2011/03/22 23:40:46 sthen Exp $

COMMENT =	graphic library, pdf parser, viewer and utilities

V =		0.8.15
DISTNAME =	mupdf-$V-source
PKGNAME =	mupdf-$V
WRKDIST =	${WRKDIR}/mupdf-$V

CATEGORIES =	textproc x11

HOMEPAGE =	http://mupdf.com/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# code: GPLv3. font maps: Adobe (redist ok, see headers). droid: Apache.
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xext c freetype jpeg>=62 m openjpeg z

MASTER_SITES =	${HOMEPAGE}download/ \
		${HOMEPAGE}download/archive/

RUN_DEPENDS =	devel/desktop-file-utils
BUILD_DEPENDS =	graphics/jbig2dec
LIB_DEPENDS =	graphics/jpeg \
		graphics/openjpeg

USE_GMAKE =	Yes
USE_GROFF =	Yes

NO_REGRESS =	Yes

MAKE_ENV +=     CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}" CC=${CC} CXX=${CXX} \
		MANDIR="${WRKINST}${PREFIX}/man/man1" build= verbose=1

CFLAGS +=	-Ifitz -Imupdf -I${LOCALBASE}/include
LDFLAGS +=	-L${LOCALBASE}/lib
FAKE_FLAGS =	prefix=${WRKINST}${PREFIX}

# the normal build embeds fonts into c files which take gobs of ram to
# compile (too much for some arch, even with -O0). fontres pulls them in
# via the assember instead.
pre-configure:
	cp ${FILESDIR}/fontres.c ${WRKSRC}/mupdf/
	${SUBST_CMD} ${WRKSRC}/debian/mupdf.pc

post-install:
	# don't want to conflict with xpdf's pdfinfo
	mv ${PREFIX}/bin/pdfinfo ${PREFIX}/bin/pdfinfo_mupdf
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/ \
	    ${PREFIX}/share/application-registry/ ${PREFIX}/share/pixmaps \
	    ${PREFIX}/lib/pkgconfig/
	${INSTALL_DATA} ${WRKSRC}/debian/mupdf.xpm ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/debian/mupdf.applications \
	    ${PREFIX}/share/application-registry/
	${INSTALL_DATA} ${WRKSRC}/debian/mupdf.desktop \
	    ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/debian/mupdf.pc \
	    ${PREFIX}/lib/pkgconfig/mupdf.pc

.include <bsd.port.mk>
