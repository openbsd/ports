# $OpenBSD: Makefile,v 1.11 1999/04/05 22:37:09 brad Exp $

DISTNAME=	ghostscript-5.10
CATEGORIES=	print
MASTER_SITES=	$(MASTER_SITE_GNU)
MASTER_SITE_SUBDIR=     ghostscript
DISTFILES=	${GS_SOURCES} ${GS_FONTS_STD} ${GS_FONTS_OTHER} \
		${HP850_DRV} ${PDFENCRYPT}

MAINTAINER=	ports@openbsd.org

BUILD_DEPENDS=	/nonexistent:${PORTSDIR}/graphics/jpeg:extract \
		unzip:${PORTSDIR}/archivers/unzip
LIB_DEPENDS=	png:${PORTSDIR}/graphics/png

MAKE_ENV=	PORTSDIR=${PORTSDIR}
EXTRACT_ONLY=	${GS_SOURCES}
WRKSRC=		${WRKDIR}/gs5.10
MAKEFILE=	unix-gcc.mak
MAKE_FLAGS=	prefix=${PREFIX} zlibc_=-lz CFLAGS="${CFLAGS}" -f
MAN1=		gs.1 pdf2dsc.1 pdf2ps.1 ps2ascii.1 ps2epsi.1 ps2pdf.1

GS_SOURCES=	ghostscript-5.10.tar.gz
GS_SOURCES+=	ghostscript-5.10gnu.tar.gz
#  Note: the following two are real files that have symlinks with
#  later version numbers pointing to them.  To avoid unnecessarily
#  downloading distfiles, do not change these when upgrading the port
#  unless the files really change.
GS_FONTS_STD=	ghostscript-fonts-std-5.10.tar.gz
GS_FONTS_OTHER=	ghostscript-fonts-other-5.10.tar.gz

# Additional driver HP 850, see http://bonk.ethz.ch/hp850/hp850.html
HP850_DRV=	hp850.zip

# PDF Encryption support, see http://www.ozemail.com.au/~geoffk/pdfencrypt/
PDFENCRYPT=	pdf_sec.ps

# Location of the extracted jpeg sources
#
.if defined(OBJMACHINE)
JPEG_DIR=	${PORTSDIR}/graphics/jpeg/work.${MACHINE_ARCH}/jpeg-6b
.else
JPEG_DIR=	${PORTSDIR}/graphics/jpeg/work/jpeg-6b
.endif

.if defined(A4)
CFLAGS+=	-DA4
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
	@cd ${WRKSRC} && ${SETENV} unzip -La ${DISTDIR}/${HP850_DRV}
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
			tar -xzf ${DISTDIR}/${GS_FONTS_STD} ; \
			tar -xzf ${DISTDIR}/${GS_FONTS_OTHER})

post-install:
	strip ${PREFIX}/bin/gs

.include <bsd.port.mk>
