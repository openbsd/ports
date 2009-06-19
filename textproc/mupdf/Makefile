# $OpenBSD: Makefile,v 1.3 2009/06/19 13:42:29 sthen Exp $

COMMENT =	graphic library, pdf parser, viewer and utilities

DISTNAME =	fitz-0.0.20090616
PKGNAME =	mupdf-0.0.20090616p0

CATEGORIES =	textproc x11

HOMEPAGE =	http://ccxvii.net/fitz/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# Code: GPLv3 but needs some copyright notices adding.
# cmaps: Adobe (redist ok, see headers in files)
# droid font: Apache license
PERMIT_PACKAGE_CDROM =	not yet
PERMIT_PACKAGE_FTP =	not yet
PERMIT_DISTFILES_CDROM =not yet
PERMIT_DISTFILES_FTP =	not yet

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
