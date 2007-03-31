# $OpenBSD: Makefile,v 1.39 2007/03/31 12:58:13 steven Exp $
# $NetBSD: Makefile,v 1.2 1998/09/22 06:11:36 garbled Exp $

COMMENT=	"x86 machine simulator"

DISTNAME=	bochs-2.1.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	emulators

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bochs/}

HOMEPAGE=	http://bochs.sourceforge.net/

MAINTAINER=	Todd T. Fries <todd@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 c m stdc++ termlib z

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-cdrom \
		--enable-fpu \
		--enable-ne2000 \
		--with-nogui \
		--with-term \
		--enable-all-optimizations

FLAVORS=	debug i386 i486 i686 x86_64 smp smp_4 smp_8 \
		no_x11 no_mmx no_comp no_pci
FLAVOR?=

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+= --enable-debugger --enable-disasm --enable-x86-debugger
CONFIGURE_ARGS+= --enable-readline
WANTLIB+=		curses readline
.endif

.if !${FLAVOR:L:Mno_x11}
USE_X11=	Yes
CONFIGURE_ARGS+= --with-x11
.endif

.if ${FLAVOR:L:Mi386}
CONFIGURE_ARGS+= --enable-cpu-level="3" --disable-mmx
. if ${FLAVOR:L:Mi486} || ${FLAVOR:L:Mi686} || ${FLAVOR:L:Mx86_64}
ERRORS +=	"Fatal: cannot use i486, i686, or x86_64 flavors with i386"
. endif
.endif

.if ${FLAVOR:L:Mi486}
CONFIGURE_ARGS+= --enable-cpu-level="4" --disable-mmx
. if ${FLAVOR:L:Mi386} ||  ${FLAVOR:L:Mi686} || ${FLAVOR:L:Mx86_64}
ERRORS +=	"Fatal: cannot use i386, i686, or x86_64 flavors with i486"
. endif
.endif

.if ! ${FLAVOR:L:Mi386} && ! ${FLAVOR:L:Mi486} && ! ${FLAVOR:L:Mi686}
CONFIGURE_ARGS+= --enable-cpu-level="5"
.endif

.if ${FLAVOR:L:Mi686}
CONFIGURE_ARGS+= --enable-cpu-level="6"
. if ${FLAVOR:L:Mi386} ||  ${FLAVOR:L:Mi486}
ERRORS +=	"Fatal: cannot use i386 or i486 flavors with i686"
. endif
.endif

.if ${FLAVOR:L:Mx86_64}
CONFIGURE_ARGS+= --enable-x86-64 --enable-cpu-level="6"
.else
CONFIGURE_ARGS+= --disable-x86-64
.endif

.if !${FLAVOR:L:Mno_pci}
CONFIGURE_ARGS+= --enable-pci
.endif

.if ${FLAVOR:L:Msmp} || ${FLAVOR:L:Msmp_4} || ${FLAVOR:L:Msmp_8}
. if ! ${FLAVOR:L:Mi686}
ERRORS += "Fatal: i686 flavor required for smp"
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

.if !${FLAVOR:L:Mno_mmx}
CONFIGURE_ARGS+= --enable-mmx
. if ${FLAVOR:L:Mi386} || ${FLAVOR:L:Mi486}
ERRORS +=	"Fatal: cannot use i386 or i486 with mmx"
. endif
.endif

.if !${FLAVOR:L:Mno_comp}
CONFIGURE_ARGS+= --enable-compressed-hd
.endif

pre-build:
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bochs
	cd ${WRKBUILD}; ${INSTALL_PROGRAM} bochs bximage ${PREFIX}/bin
	cd ${WRKSRC}/bios; ${INSTALL_DATA} ${BIOS} ${PREFIX}/share/bochs/bios
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.5 ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKSRC}/docs-html/*.html ${PREFIX}/share/doc/bochs
	${INSTALL_DATA} ${WRKSRC}/bochsrc ${PREFIX}/share/bochs

.include <bsd.port.mk>
