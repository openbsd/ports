# $OpenBSD: Makefile,v 1.5 2009/07/12 19:40:11 sthen Exp $

COMMENT =	graphic library, pdf parser, viewer and utilities

DISTNAME =	fitz-0.4
PKGNAME =	${DISTNAME:S/fitz/mupdf/}p0

CATEGORIES =	textproc x11

HOMEPAGE =	http://ccxvii.net/fitz/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# code: GPLv3. font maps: Adobe (redist ok, see headers). droid: Apache.
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xext c freetype m z

# from darcs checkout
MASTER_SITES =	http://spacehopper.org/mirrors/

BUILD_DEPENDS =	::devel/jam

LIB_DEPENDS =	jasper::graphics/jasper \
		jpeg.>=62::graphics/jpeg

USE_X11 =		Yes

NO_REGRESS =		Yes

JAMDEBUG =	-d x	# display command-lines
JAMDEBUG +=	-q	# die quickly on build failure
MAKE_ENV +=		CC=${CC} CXX=${CXX}

JAMFLAGS = \
	-sALL_LOCATE_TARGET=${WRKBUILD} \
	-sBUILD= \
	-sHAVE_JASPER=yes \
	-sOPTIM="${CFLAGS}" \
	-sOS=LINUX \
	-sTHIRDPARTYINC="`freetype-config --cflags` -I${LOCALBASE}/include" \
	-sTHIRDPARTYLIB="`freetype-config --libs` -L${LOCALBASE}/lib"

FLAVORS +=	no_cjk
FLAVOR ?=

.if ${FLAVOR:L:Mno_cjk}
JAMFLAGS +=    -sDEFINES=NOCJK
.endif

SEPARATE_BUILD =	concurrent

pre-configure:
	cp ${FILESDIR}/fontres.c ${WRKSRC}/

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} jam ${JAMDEBUG} ${JAMFLAGS}

do-install:
	${INSTALL_MAN} ${FILESDIR}/mupdf.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKBUILD}/mupdf ${PREFIX}/bin
.for x in pdfclean pdfdraw pdfextract pdfinfo pdfshow
	${INSTALL_PROGRAM} ${WRKBUILD}/$x ${PREFIX}/bin/mu_$x
.endfor

.include <bsd.port.mk>
