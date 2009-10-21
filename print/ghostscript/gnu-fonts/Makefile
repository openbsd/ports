# $OpenBSD: Makefile,v 1.10 2009/10/21 14:19:01 kili Exp $

COMMENT=		35 standard PostScript fonts with Adobe name aliases

DISTNAME=		ghostscript-fonts-std-8.11
PKGNAME=		${DISTNAME:S,-std-,-,}p1
CATEGORIES=		x11 print

HOMEPAGE=		http://www.cs.wisc.edu/~ghost/doc/cvs/Fonts.htm

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=ghostscript/}

WRKDIST=	${WRKDIR}
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
FONTDIR=	${PREFIX}/share/ghostscript/fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKDIST}/fonts/*.{afm,pfm,pfb} ${FONTDIR}
	${INSTALL_DATA} ${FILESDIR}/fonts.alias ${FONTDIR}/fonts.alias-gs

.include <bsd.port.mk>
