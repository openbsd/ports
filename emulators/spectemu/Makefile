# $OpenBSD: Makefile,v 1.8 2009/08/10 06:31:09 kili Exp $

COMMENT=		ZX Spectrum 48k emulator

DISTNAME=		spectemu-0.94
PKGNAME=		${DISTNAME}p1
CATEGORIES=		emulators

HOMEPAGE=		http://www.inf.bme.hu/~mszeredi/spectemu/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c pthread-stubs readline termcap xcb

MASTER_SITES=		${HOMEPAGE}

USE_X11=		Yes

CONFIGURE_STYLE=	gnu

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xspect ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/xspect.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/spectemu
	${INSTALL_DATA} ${WRKSRC}/spectkey.gif ${PREFIX}/share/spectemu
	${INSTALL_DATA} ${WRKSRC}/specsinc.xpm ${PREFIX}/share/spectemu
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/spectemu
	${INSTALL_DATA} ${WRKSRC}/example.cfg ${PREFIX}/share/examples/spectemu
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/spectemu
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/spectemu
	perl -i -pe 's!__SYSCONFDIR__!${SYSCONFDIR}!' \
		${PREFIX}/share/doc/spectemu/README

.include <bsd.port.mk>
