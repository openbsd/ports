# $OpenBSD: Makefile,v 1.4 2004/08/11 06:05:35 espie Exp $

COMMENT=		"35 standard PostScript fonts with Adobe name aliases"

VER=			6.0
PKGNAME=		ghostscript-fonts-${VER}
DISTNAME=		gnu-gs-fonts-std-${VER}
CATEGORIES=		x11 print

HOMEPAGE=		http://www.cs.wisc.edu/~ghost/doc/cvs/Fonts.htm

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=ghostscript/}

WRKDIST=	${WRKDIR}
NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*
FONTDIR=	${PREFIX}/share/ghostscript
X11FONTDIR=	${PREFIX}/lib/X11/fonts

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	cd ${WRKDIST} && tar cf - fonts | (cd ${FONTDIR} && tar -xf -)
	${INSTALL_DATA} ${FILESDIR}/fonts.alias ${FONTDIR}/fonts/fonts.alias-gs
	${INSTALL_DATA_DIR} ${X11FONTDIR}
	cd ${X11FONTDIR} && ln -s ../../../share/ghostscript/fonts ghostscript

.include <bsd.port.mk>
