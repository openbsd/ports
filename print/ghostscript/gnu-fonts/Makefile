# $OpenBSD: Makefile,v 1.6 2006/10/20 15:36:20 kili Exp $

COMMENT=		"35 standard PostScript fonts with Adobe name aliases"

DISTNAME=		ghostscript-fonts-std-8.11
PKGNAME=		${DISTNAME:S,-std-,-,}
CATEGORIES=		x11 print

HOMEPAGE=		http://www.cs.wisc.edu/~ghost/doc/cvs/Fonts.htm

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://mirror.cs.wisc.edu/pub/mirrors/ghost/fonts/

WRKDIST=	${WRKDIR}
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
FONTDIR=	${PREFIX}/share/ghostscript/fonts
X11FONTDIR=	${PREFIX}/lib/X11/fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/*.{afm,pfm,pfb} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/fonts.scale ${FONTDIR}
	${INSTALL_DATA} ${FILESDIR}/fonts.alias ${FONTDIR}/fonts.alias-gs
	${INSTALL_DATA_DIR} ${X11FONTDIR}
	cd ${X11FONTDIR} && ln -s ../../../share/ghostscript/fonts ghostscript

.include <bsd.port.mk>
