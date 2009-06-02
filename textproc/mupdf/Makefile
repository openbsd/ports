# $OpenBSD: Makefile,v 1.1.1.1 2009/06/02 22:15:08 sthen Exp $

COMMENT =	graphic library, pdf parser, viewer and utilities

DISTNAME =	fitz-0.0.20090601
PKGNAME =	mupdf-0.0.20090601

CATEGORIES =	textproc x11

HOMEPAGE =	http://ccxvii.net/fitz/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# Code: GPLv2 but XXX missing copyright information and license headers
# Fonts: Adobe/Apache license
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

# built-in CJK fonts and data files use way too much compiler
# memory, even with -O0.
.if (${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "sparc64" && \
    ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "hppa")
JAMFLAGS +=	-sDEFINES=NOCJK
.else
VMEM_WARNING =	Yes
.endif

SEPARATE_BUILD =	concurrent

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} jam ${JAMDEBUG} ${JAMFLAGS}

do-install:
	${INSTALL_MAN} ${FILESDIR}/mupdf.1 ${PREFIX}/man/man1
	${INSTALL_PROGRAM} ${WRKBUILD}/mupdf ${PREFIX}/bin
.for x in cmapdump fontdump pdfclean pdfdraw pdfextract pdfinfo pdfshow
	${INSTALL_PROGRAM} ${WRKBUILD}/$x ${PREFIX}/bin/mu_$x
.endfor

.include <bsd.port.mk>
