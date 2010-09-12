# $OpenBSD: Makefile,v 1.3 2010/09/12 16:49:10 jasper Exp $

COMMENT=		monospace font designed for coders

DISTNAME=		Inconsolata
PKGNAME=		inconsolata-font-0.1
CATEGORIES=		x11

HOMEPAGE=		http://www.levien.com/type/myfonts/inconsolata.html

MASTER_SITES=		http://distfiles.nl/
EXTRACT_SUFX=		.otf
EXTRACT_ONLY=

# SIL Open Font License
# http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&item_id=OFL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PKG_ARCH=		*
NO_BUILD=		Yes
NO_REGRESS=		Yes
FONTSDIR=		${PREFIX}/lib/X11/fonts/Inconsolata/

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${DISTDIR}/${DIST_SUBDIR}/${DISTFILES} ${FONTSDIR}

.include <bsd.port.mk>
