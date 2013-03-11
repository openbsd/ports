# $OpenBSD: Makefile,v 1.2 2013/03/11 11:06:05 espie Exp $

COMMENT=		monospace font designed for coders

DISTNAME=		Inconsolata
PKGNAME=		inconsolata-font-0.1
REVISION=		0
CATEGORIES=		fonts x11

HOMEPAGE=		http://www.levien.com/type/myfonts/inconsolata.html

MASTER_SITES=		http://distfiles.nl/
EXTRACT_SUFX=		.otf
EXTRACT_ONLY=

# SIL Open Font License
# http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&item_id=OFL
PERMIT_PACKAGE_CDROM=	Yes

PKG_ARCH=		*
NO_BUILD=		Yes
NO_TEST=		Yes
FONTSDIR=		${PREFIX}/lib/X11/fonts/Inconsolata/

do-install:
	${INSTALL_DATA_DIR} ${FONTSDIR}
	${INSTALL_DATA} ${DISTDIR}/${DIST_SUBDIR}/${DISTFILES} ${FONTSDIR}

.include <bsd.port.mk>
