# $OpenBSD: Makefile,v 1.25 2002/10/26 12:52:48 naddy Exp $
# $NetBSD: Makefile,v 1.2 1998/09/22 06:11:36 garbled Exp $

COMMENT=	"x86 machine simulator"

DISTNAME=	bochs-1.4
CATEGORIES=	emulators

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bochs/}

HOMEPAGE=	http://bochs.sourceforge.net/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-cdrom \
		--enable-fpu \
		--enable-ne2000 \
		--enable-vga

FLAVORS=	debug i386 i486 i686 pci smp no_x11 term
FLAVOR?=

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+= --enable-debugger --enable-disasm --enable-x86-debugger
CONFIGURE_ARGS+= --enable-readline
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
.elif ${FLAVOR:L:Mi686}
CONFIGURE_ARGS+= --enable-cpu-leve="6"
.else
CONFIGURE_ARGS+= --enable-cpu-level="5"
.endif

.if ${FLAVOR:L:Mpci}
CONFIGURE_ARGS+= --enable-pci
.endif

.if ${FLAVOR:L:Msmp}
CONFIGURE_ARGS+= --enable-processors=2
.endif

post-configure:
	@sed -e 's@!!PREFIX!!@${PREFIX}@' \
		< ${WRKSRC}/.bochsrc > ${WRKSRC}/bochsrc

NO_REGRESS=	Yes

BIOS  = BIOS-bochs-4-processors BIOS-bochs-2-processors
BIOS += BIOS-bochs-latest
BIOS += VGABIOS-elpin-2.40

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bochs/bios
	${INSTALL_DATA_DIR} ${PREFIX}/share/bochs/fonts
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bochs
	cd ${WRKBUILD}; ${INSTALL_PROGRAM} bochs bximage ${PREFIX}/bin
	cd ${WRKSRC}/bios; ${INSTALL_DATA} ${BIOS} ${PREFIX}/share/bochs/bios
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/docs-html/*.html ${PREFIX}/share/doc/bochs
	${INSTALL_DATA} ${WRKSRC}/docs-html/*.gif ${PREFIX}/share/doc/bochs
	${INSTALL_DATA} ${WRKSRC}/font/hercules.bdf ${PREFIX}/share/bochs/fonts
	${INSTALL_DATA} ${WRKSRC}/font/vga.bdf ${PREFIX}/share/bochs/fonts
	${INSTALL_DATA} ${WRKSRC}/font/vga.pcf ${PREFIX}/share/bochs/fonts
	${INSTALL_DATA} ${WRKSRC}/bochsrc ${PREFIX}/share/bochs
	${X11BASE}/bin/mkfontdir ${PREFIX}/share/bochs/fonts

.include <bsd.port.mk>
