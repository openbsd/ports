# $OpenBSD: Makefile,v 1.16 1999/09/26 22:47:53 espie Exp $

DISTNAME=	ghostscript-5.10
CATEGORIES=	print
MASTER_SITES= $(MASTER_SITE_GNU)

MASTER_SITES0=	http://www.ozemail.com.au/~geoffk/pdfencrypt/ 
MASTER_SITES1= http://www.erdw.ethz.ch/~bonk/ftp/gs-driver-distrib/

MASTER_SITE_SUBDIR=     ghostscript
DISTFILES=	${GS_SOURCES} ${GS_FONTS_STD} ${GS_FONTS_OTHER} \
		${HP850_DRV}:1 ${PDFENCRYPT}:0

NEED_VERSION=	1.92

MAINTAINER=	ports@openbsd.org

BUILD_DEPENDS=	/nonexistent:${PORTSDIR}/graphics/jpeg:extract \
		/nonexistent:${PORTSDIR}/graphics/png:extract \
		unzip:${PORTSDIR}/archivers/unzip
LIB_DEPENDS=	png.1.3:${PORTSDIR}/graphics/png

MAKE_ENV=	PORTSDIR=${PORTSDIR}
EXTRACT_ONLY=	${GS_SOURCES}
WRKSRC=		${WRKDIR}/gs5.10
MAKEFILE=	unix-gcc.mak
MAKE_FLAGS=	prefix=${PREFIX} zlibc_=-lz CFLAGS="${CFLAGS}" -f

GS_SOURCES=	ghostscript-5.10.tar.gz
#  Note: the following two are real files that have symlinks with
#  later version numbers pointing to them.  To avoid unnecessarily
#  downloading distfiles, do not change these when upgrading the port
#  unless the files really change.
GS_FONTS_STD=	ghostscript-fonts-std-5.10.tar.gz
GS_FONTS_OTHER=	ghostscript-fonts-other-5.10.tar.gz

# Additional driver for HP, see http://www.erdw.ethz.ch/~bonk/hp850/hp850.html
HP850_DRV=	hp8xxs13.zip

# PDF Encryption support, see http://www.ozemail.com.au/~geoffk/pdfencrypt/
PDFENCRYPT=	pdf_sec.ps

# Location of the extracted jpeg sources
#
.if defined(OBJMACHINE)
JPEG_DIR=	${PORTSDIR}/graphics/jpeg/work.${MACHINE_ARCH}/jpeg-6b
PNG_DIR=	${PORTSDIR}/graphics/png/work.${MACHINE_ARCH}/libpng-1.0.3
.else
JPEG_DIR=	${PORTSDIR}/graphics/jpeg/work/jpeg-6b
PNG_DIR=	${PORTSDIR}/graphics/png/work/libpng-1.0.3
.endif

.if defined(A4)
CFLAGS+=	-DA4
PKGNAME=${DISTNAME}-A4
.endif

.if !defined(NO_WARNINGS)
pre-fetch:
.if !defined(A4)
	@${ECHO_MSG} "Type \"make A4=yes\" if you want -DA4 for compilation."
.else
	@${ECHO_MSG} "Using -DA4 for compilation."
.endif
.endif

post-extract:
	@${TOUCH} ${WRKSRC}/adler32.c
	@${TOUCH} ${WRKSRC}/deflate.c
	@${TOUCH} ${WRKSRC}/trees.c
	@${TOUCH} ${WRKSRC}/adler32.o
	@${TOUCH} ${WRKSRC}/deflate.o
	@${TOUCH} ${WRKSRC}/trees.o
	@${LN} -sf ${JPEG_DIR} ${WRKSRC}/jpeg-6b
	@${LN} -sf ${PNG_DIR} ${WRKSRC}/libpng
	@cd ${WRKSRC} && ${MV} devs.mak devs.mak.keep
	@cd ${WRKSRC} && ${SETENV} unzip -La ${DISTDIR}/${HP850_DRV}
	@cd ${WRKSRC} && ${RM} devs.mak && ${MV} devs.mak.keep devs.mak
	@cp ${DISTDIR}/${PDFENCRYPT} ${WRKSRC}

do-configure:
.if defined(BATCH)
	@${SETENV} PORTSDIR=${PORTSDIR} WRKSRC=${WRKSRC} \
		${SH} ${SCRIPTDIR}/configure.batch
.else
	@${SETENV} PORTSDIR=${PORTSDIR} WRKSRC=${WRKSRC} \
		${SH} ${SCRIPTDIR}/configure
.endif

pre-install:
	@${MKDIR} ${PREFIX}/share/ghostscript ${PREFIX}/share/ghostscript/fonts \
		${PREFIX}/bin ${PREFIX}/man/man1
	(cd ${PREFIX}/share/ghostscript/fonts ; \
			${TAR} -xzf ${DISTDIR}/${GS_FONTS_STD} ; \
			${TAR} -xzf ${DISTDIR}/${GS_FONTS_OTHER})

post-install:
	@strip ${PREFIX}/bin/gs

.include <bsd.port.mk>
