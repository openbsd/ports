# New ports collection makefile for:   bochs
# Version required:    980513a
# Date created:        20 Apr 1998
# Whom:                form
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/20 07:11:31 form Exp $
# FreeBSD: Makefile,v 1.9 1998/05/18 23:49:17 alex Exp
#

VGABIOS=	VGABIOS-elpin-2.00A
BIOS=		BIOS-bochs-980331a
DATE= 		980513

DISTNAME=	bochs-${DATE}a
CATEGORIES= 	emulators
MASTER_SITES= 	ftp://ftp.std.com/pub/bochs/

MAINTAINER=	form@vs.itam.nsc.ru

GNU_CONFIGURE=	YES
CONFIGURE_ARGS=	--enable-80386 --enable-memory=16 \
	--enable-v8086-mode --enable-paging --enable-vga \
	--enable-bochs-bios-hooks --enable-dma-floppy-io \
	--enable-processor-ips=200000

WRKSRC=		${WRKDIR}/bochs-${DATE}

RESTRICTED=	"Commercial software"
NO_CDROM=	${RESTRICTED}
NO_PACKAGE=	${RESTRICTED}

ONLY_FOR_ARCHS=	i386

GZIP!=		which gzip
MKFONTDIR!=	which mkfontdir

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bochs ${PREFIX}/bin
	-@${MKDIR} ${PREFIX}/lib/bochs
	${INSTALL_DATA} ${WRKSRC}/.bochsrc ${PREFIX}/lib/bochs/bochsrc.sample
	-@${MKDIR} ${PREFIX}/lib/bochs/bios
	${INSTALL_DATA} ${WRKSRC}/bios/${VGABIOS} \
		${PREFIX}/lib/bochs/bios
	${INSTALL_DATA} ${WRKSRC}/bios/${BIOS} \
		${PREFIX}/lib/bochs/bios
.if !defined(NOPORTDOCS)
	-@${MKDIR} ${PREFIX}/share/doc/bochs
	${INSTALL_MAN} ${WRKSRC}/docs-html/LICENSE ${PREFIX}/share/doc/bochs
	${INSTALL_MAN} ${WRKSRC}/docs-html/*.html ${PREFIX}/share/doc/bochs
	${MKDIR} ${PREFIX}/lib/bochs/fonts
	${CP} ${WRKSRC}/font/vga.pcf ${PREFIX}/lib/bochs/fonts
	if [ "${GZIP}" ]; then ${GZIP} ${PREFIX}/lib/bochs/fonts/vga.pcf; fi
	if [ "${MKFONTDIR}" ]; then ${MKFONTDIR} ${PREFIX}/lib/bochs/fonts; fi
.endif

.include <bsd.port.mk>
