# $OpenBSD: Makefile,v 1.30 2003/04/25 21:15:43 todd Exp $
# $NetBSD: Makefile,v 1.2 1998/09/22 06:11:36 garbled Exp $

COMMENT=	"x86 machine simulator"

DISTNAME=	bochs-2.0.2
CATEGORIES=	emulators

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bochs/}

HOMEPAGE=	http://bochs.sourceforge.net/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-cdrom \
		--enable-fpu \
		--enable-ne2000 \
		--enable-vga

FLAVORS=	debug i386 i486 i686 x86_64 pci smp smp_4 smp_8 no_x11 term
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
CONFIGURE_ARGS+= --enable-cpu-level="3" --disable-mmx
.elif ${FLAVOR:L:Mi486}
CONFIGURE_ARGS+= --enable-cpu-level="4" --disable-mmx
.elif ${FLAVOR:L:Mi686}
CONFIGURE_ARGS+= --enable-cpu-level="6"
.elif ${FLAVOR:L:Mx86_64}
CONFIGURE_ARGS+= --enable-x86-64
.else
CONFIGURE_ARGS+= --enable-cpu-level="5"
.endif

.if !${FLAVOR:L:Mx86_64}
CONFIGURE_ARGS+= --disable-x86-64
.endif

.if ${FLAVOR:L:Mpci}
CONFIGURE_ARGS+= --enable-pci
.endif

.if ${FLAVOR:L:Msmp} || ${FLAVOR:L:Msmp_4} || ${FLAVOR:L:Msmp_8}
. if ! ( ${FLAVOR:L:Mi686} || ${FLAVOR:L:Mx86_64} )
BROKEN= "must use i686 or x86_64 flavor for smp"
. endif
. if ${FLAVOR:L:Msmp_8}
CONFIGURE_ARGS+= --enable-processors=8
. elif ${FLAVOR:L:Msmp_4}
CONFIGURE_ARGS+= --enable-processors=4
. else
CONFIGURE_ARGS+= --enable-processors=2
. endif
CONFIGURE_ARGS+= --enable-apic
.else
CONFIGURE_ARGS+= --disable-apic
.endif

post-configure:
	@sed -e 's@!!PREFIX!!@${PREFIX}@' \
		< ${WRKSRC}/.bochsrc > ${WRKSRC}/bochsrc

NO_REGRESS=	Yes

.for _ncpu in 2 4 8
BIOS  += BIOS-bochs-${_ncpu}-processors
.endfor
BIOS += BIOS-bochs-latest
BIOS += VGABIOS-elpin-2.40 VGABIOS-elpin-LICENSE
BIOS += VGABIOS-lgpl-latest VGABIOS-lgpl-README

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
