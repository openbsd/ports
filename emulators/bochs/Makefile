# $OpenBSD: Makefile,v 1.19 2001/03/26 15:58:18 todd Exp $
# $NetBSD: Makefile,v 1.2 1998/09/22 06:11:36 garbled Exp $

COMMENT=	"x86 CPU emulator"
DISTNAME=	bochs-2000_0325a
CATEGORIES=	emulators
NEED_VERSION=	1.364
MASTER_SITES=	ftp://ftp.bochs.com/bochs/

HOMEPAGE=	http://www.bochs.com/

MAINTAINER=	Todd T. Fries <todd@OpenBSD.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-vga \
		--enable-fpu --enable-cdrom

FLAVORS=	debug i386 i486 pci smp net no_x11 term
FLAVOR?=

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+= --enable-debugger --enable-disasm --enable-x86-debugger
.endif

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --with-nogui
.elif ${FLAVOR:L:Mterm}
CONFIGURE_ARGS+= --with-term
.else
CONFIGURE_ARGS+= --with-x11
.endif

.if ${FLAVOR:L:Mi386}
CONFIGURE_ARGS+= --enable-cpu-level="3"
.elif ${FLAVOR:L:Mi486}
CONFIGURE_ARGS+= --enable-cpu-level="4"
.else
CONFIGURE_ARGS+= --enable-cpu-level="5"
.endif

.if ${FLAVOR:L:Mpci}
CONFIGURE_ARGS+= --enable-pci
.endif

.if ${FLAVOR:L:Msmp}
CONFIGURE_ARGS+= --enable-num-sim=2
.endif

.if ${FLAVOR:L:Mnet}
CONFIGURE_ARGS+= --enable-ne2000
.endif

post-extract:
	@rm -f ${WRKSRC}/debug/lexer.c

post-configure:
	@sed -e 's@!!PREFIX!!@${PREFIX}@' \
		< ${WRKSRC}/.bochsrc > ${WRKSRC}/bochsrc

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bochs/bios
	${INSTALL_DATA_DIR} ${PREFIX}/share/bochs/fonts
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bochs
	${INSTALL_PROGRAM} ${WRKBUILD}/bochs ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/bios/BIOS-bochs-990925a ${PREFIX}/share/bochs/bios
	${INSTALL_DATA} ${WRKSRC}/bios/VGABIOS-elpin-2.20 ${PREFIX}/share/bochs/bios
	${INSTALL_DATA} ${WRKSRC}/docs-html/*.html ${PREFIX}/share/doc/bochs
	${INSTALL_DATA} ${WRKSRC}/docs-html/*.gif ${PREFIX}/share/doc/bochs
	${INSTALL_DATA} ${WRKSRC}/font/hercules.bdf ${PREFIX}/share/bochs/fonts
	${INSTALL_DATA} ${WRKSRC}/font/vga.bdf ${PREFIX}/share/bochs/fonts
	${INSTALL_DATA} ${WRKSRC}/font/vga.pcf ${PREFIX}/share/bochs/fonts
	${INSTALL_DATA} ${WRKSRC}/bochsrc ${PREFIX}/share/bochs

.include <bsd.port.mk>
