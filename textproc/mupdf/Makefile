# $OpenBSD: Makefile,v 1.16 2010/06/03 19:38:34 sthen Exp $

COMMENT =	graphic library, pdf parser, viewer and utilities

DISTNAME =	mupdf-0.6-source
PKGNAME =	${DISTNAME:S/-source//}
WRKDIST =	${WRKDIR}/mupdf

CATEGORIES =	textproc x11

HOMEPAGE =	http://mupdf.com/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# code: GPLv3. font maps: Adobe (redist ok, see headers). droid: Apache.
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xext c freetype m z

MASTER_SITES =	${HOMEPAGE}download/source/

RUN_DEPENDS =	::devel/desktop-file-utils
LIB_DEPENDS =	jbig2dec::graphics/jbig2dec \
		jpeg.>=62::graphics/jpeg \
		openjpeg::graphics/openjpeg

USE_X11 =	Yes
USE_GMAKE =	Yes

NO_REGRESS =	Yes

MAKE_ENV +=     CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}" CC=${CC} \
		CXX=${CXX} build=

CFLAGS +=	-I${LOCALBASE}/include
LDFLAGS +=	-L${LOCALBASE}/lib
FAKE_FLAGS =	prefix=${WRKINST}${PREFIX}

# the normal build embeds fonts into c files which take gobs of ram to
# compile (too much for some arch, even with -O0). fontres pulls them in
# via the assember instead.
pre-configure:
	cp ${FILESDIR}/fontres.c ${WRKSRC}/mupdf/
	${SUBST_CMD} ${WRKSRC}/debian/mupdf.pc

post-install:
	${INSTALL_MAN} ${WRKSRC}/debian/mupdf.1 ${PREFIX}/man/man1
.for x in pdfclean pdfdraw pdfshow
	${INSTALL_MAN} ${WRKSRC}/debian/$x.1 ${PREFIX}/man/man1/$x.1
.endfor
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
