# $OpenBSD: Makefile,v 1.6 2016/09/08 17:32:58 jasper Exp $

COMMENT=		monospace font designed for coders

TYPEFACE=		inconsolata
DISTNAME=		Inconsolata
PKGNAME=		${TYPEFACE}-font-0.1
REVISION=		2
CATEGORIES=		fonts x11

HOMEPAGE=		http://www.levien.com/type/myfonts/inconsolata.html

MASTER_SITES=		https://distfiles.nl/
EXTRACT_SUFX=		.otf
EXTRACT_ONLY=

# SIL Open Font License
# http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&item_id=OFL
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		font
FONTTYPES=		otf

NO_BUILD=		Yes

pre-install:
	cp ${FULLDISTDIR}/${DISTFILES} ${WRKSRC}

.include <bsd.port.mk>
