# $OpenBSD: Makefile,v 1.6 1999/02/22 04:52:22 brad Exp $
# $NetBSD: Makefile,v 1.2 1998/09/22 06:11:36 garbled Exp $

DISTNAME=		bochs-990219a
CATEGORIES=		emulators
MASTER_SITES=		ftp://ftp.bochs.com/pub/

MAINTAINER=		form@OpenBSD.ORG
HOMEPAGE=		http://www.bochs.com/

LICENSE=		shareware
WRKSRC=			${WRKDIR}/bochs-990219
USE_GMAKE=		yes
CONFIGURE_ARGS+=	--enable-vga #--with-x11
GNU_CONFIGURE=		yes
USE_X11=		yes

post-configure:
	${SED} -e 's@XXXPREFIXXXX@${PREFIX}@' < ${WRKSRC}/.bochsrc > ${WRKSRC}/bochsrc

do-install:
	${MKDIR} ${PREFIX}/share/bochs/bios
	${MKDIR} ${PREFIX}/share/bochs/fonts
	${INSTALL_DATA} ${WRKSRC}/bios/BIOS-bochs-990219a ${PREFIX}/share/bochs/bios
	${INSTALL_DATA} ${WRKSRC}/bios/VGABIOS-elpin-2.20 ${PREFIX}/share/bochs/bios
	${MKDIR} ${PREFIX}/share/doc/bochs
	${INSTALL_DATA} ${WRKSRC}/docs-html/* ${PREFIX}/share/doc/bochs
	${INSTALL_DATA} ${WRKSRC}/font/hercules.bdf ${PREFIX}/share/bochs/fonts
	${INSTALL_DATA} ${WRKSRC}/font/vga.bdf ${PREFIX}/share/bochs/fonts
	${INSTALL_DATA} ${WRKSRC}/font/vga.pcf ${PREFIX}/share/bochs/fonts
	${INSTALL_PROGRAM} ${WRKSRC}/bochs ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/bochsrc ${PREFIX}/share/bochs
	[ -x ${X11BASE}/bin/mkfontdir ] && \
		${X11BASE}/bin/mkfontdir ${PREFIX}/share/bochs/fonts
	@${ECHO} "***"
	@${ECHO} "*** Don't forget to add ${PREFIX}/share/bochs/fonts"
	@${ECHO} "*** to FontPath in /etc/XF86Config."
	@${ECHO} "***"

.include <bsd.port.mk>
