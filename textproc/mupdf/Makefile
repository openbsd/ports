# $OpenBSD: Makefile,v 1.6 2009/07/14 15:38:46 sthen Exp $

COMMENT =	graphic library, pdf parser, viewer and utilities

PKGNAME =	mupdf-0.4p1
DISTNAME =	mupdf-2009-07-07-source

CATEGORIES =	textproc x11

HOMEPAGE =	http://ccxvii.net/fitz/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# code: GPLv3. font maps: Adobe (redist ok, see headers). droid: Apache.
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xext c freetype m pthread z

MASTER_SITES =	http://ccxvii.net/mupdf/download/

BUILD_DEPENDS =	::devel/jam

LIB_DEPENDS =	openjpeg::graphics/openjpeg \
		jpeg.>=62::graphics/jpeg

USE_X11 =		Yes

NO_REGRESS =		Yes

JAMDEBUG =	-d x	# display command-lines
JAMDEBUG +=	-q	# die quickly on build failure
MAKE_ENV +=	CC=${CC} CXX=${CXX}

JAMFLAGS = \
	-sALL_LOCATE_TARGET=${WRKBUILD} \
	-sBUILD= \
	-sHAVE_OPENJPEG=yes \
	-sOPTIM="${CFLAGS}" \
	-sOS=LINUX \
	-sCXXFLAGS="${CXXFLAGS} `freetype-config --cflags` -I${LOCALBASE}/include -I${X11BASE}/include" \
	-sLDFLAGS="${LDFLAGS} `freetype-config --libs` -L${LOCALBASE}/lib"

FLAVORS +=	no_cjk
FLAVOR ?=

.if ${FLAVOR:L:Mno_cjk}
JAMFLAGS +=    -sDEFINES=NOCJK
.endif

SEPARATE_BUILD =	concurrent

pre-configure:
	cp ${FILESDIR}/fontres.c ${WRKSRC}/
	${SUBST_CMD} ${WRKSRC}/Jamrules

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} jam ${JAMDEBUG} ${JAMFLAGS}

do-install:
	${INSTALL_MAN} ${FILESDIR}/mupdf.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKBUILD}/mupdf ${PREFIX}/bin
.for x in pdfclean pdfdraw pdfextract pdfinfo pdfshow
	${INSTALL_PROGRAM} ${WRKBUILD}/$x ${PREFIX}/bin/mu_$x
.endfor

.include <bsd.port.mk>
