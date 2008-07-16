# $OpenBSD: Makefile,v 1.43 2008/07/16 20:31:33 brad Exp $
# $NetBSD: Makefile,v 1.2 1998/09/22 06:11:36 garbled Exp $

COMMENT=	x86 machine simulator

DISTNAME=	bochs-2.3.7
CATEGORIES=	emulators

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bochs/}

HOMEPAGE=	http://bochs.sourceforge.net/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m stdc++ termlib

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-acpi \
		 --enable-all-optimizations \
		 --enable-fpu \
		 --enable-ne2000 \
		 --enable-pci \
		 --enable-smp \
		 --enable-x86-64 \
		 --with-term

FLAVORS=	debug no_x11
FLAVOR?=

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+= --enable-debugger \
		 --enable-disasm \
		 --enable-x86-debugger \
		 --enable-port-e9-hack \
		 --enable-readline
WANTLIB+=	curses readline
.endif

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --with-nogui
.else
USE_X11=	Yes
CONFIGURE_ARGS+= --with-x11
WANTLIB+=	ICE SM X11 Xau Xdmcp
.endif

NO_REGRESS=	Yes

BIOS += BIOS-bochs-latest
BIOS += VGABIOS-elpin-2.40 VGABIOS-elpin-LICENSE
BIOS += VGABIOS-lgpl-latest VGABIOS-lgpl-README
BIOS += VGABIOS-lgpl-latest-cirrus VGABIOS-lgpl-latest-cirrus-debug

BINS+= bochs bxcommit bximage

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bochs
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/bochs
	cd ${WRKBUILD}; ${INSTALL_PROGRAM} ${BINS} ${PREFIX}/bin
	cd ${WRKSRC}/bios; ${INSTALL_DATA} ${BIOS} ${PREFIX}/share/bochs
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.5 ${PREFIX}/man/man5
	${INSTALL_DATA} ${WRKSRC}/docs-html/*.html ${PREFIX}/share/doc/bochs
	${INSTALL_DATA} ${WRKSRC}/.bochsrc ${PREFIX}/share/bochs/bochsrc

.include <bsd.port.mk>
