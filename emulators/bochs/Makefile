# $OpenBSD: Makefile,v 1.15 2000/07/18 05:16:58 brad Exp $
# $NetBSD: Makefile,v 1.2 1998/09/22 06:11:36 garbled Exp $

DISTNAME=	bochs-2000_0325a
CATEGORIES=	emulators
NEED_VERSION=	1.310
MASTER_SITES=	ftp://ftp.bochs.com/pub/

HOMEPAGE=	http://www.bochs.com/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-x11 --enable-vga --enable-cpu-level="4" \
		--enable-fpu --enable-cdrom

FLAVORS=	debugger
FLAVOR?=

.if ${FLAVOR:L} == "debugger"
CONFIGURE_ARGS+= --enable-debugger --enable-disasm
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
