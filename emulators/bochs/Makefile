# $OpenBSD: Makefile,v 1.12 2000/03/24 22:11:41 espie Exp $
# $NetBSD: Makefile,v 1.2 1998/09/22 06:11:36 garbled Exp $

DISTNAME=	bochs-991023a
CATEGORIES=	emulators
NEED_VERSION=	1.191
MASTER_SITES=	ftp://ftp.bochs.com/pub/

HOMEPAGE=	http://www.bochs.com/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	"trial period only"
PERMIT_PACKAGE_FTP=	"trial period only"
PERMIT_DISTFILES_CDROM=	"trial period only"
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	yes
USE_X11=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-x11 --enable-vga

WRKDIST=	${WRKDIR}/bochs-991023a

post-configure:
	@sed -e 's@XXXPREFIXXXX@${PREFIX}@' \
		< ${WRKSRC}/.bochsrc > ${WRKSRC}/bochsrc

do-install:
	@mkdir -p ${PREFIX}/share/bochs/bios
	@mkdir -p ${PREFIX}/share/bochs/fonts
	@mkdir -p ${PREFIX}/share/doc/bochs
	${INSTALL_PROGRAM} ${WRKSRC}/bochs ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/bios/BIOS-bochs-990925a ${PREFIX}/share/bochs/bios
	${INSTALL_DATA} ${WRKSRC}/bios/VGABIOS-elpin-2.20 ${PREFIX}/share/bochs/bios
	${INSTALL_DATA} ${WRKSRC}/docs-html/LICENSE ${PREFIX}/share/doc/bochs
	${INSTALL_DATA} ${WRKSRC}/docs-html/*.html ${PREFIX}/share/doc/bochs
	${INSTALL_DATA} ${WRKSRC}/docs-html/*.gif ${PREFIX}/share/doc/bochs
	${INSTALL_DATA} ${WRKSRC}/font/hercules.bdf ${PREFIX}/share/bochs/fonts
	${INSTALL_DATA} ${WRKSRC}/font/vga.bdf ${PREFIX}/share/bochs/fonts
	${INSTALL_DATA} ${WRKSRC}/font/vga.pcf ${PREFIX}/share/bochs/fonts
	${INSTALL_DATA} ${WRKSRC}/bochsrc ${PREFIX}/share/bochs
	@${X11BASE}/bin/mkfontdir ${PREFIX}/share/bochs/fonts
	@echo "***"
	@echo "*** Don't forget to add ${PREFIX}/share/bochs/fonts"
	@echo "*** to FontPath in /etc/XF86Config."
	@echo "***"

.include <bsd.port.mk>
