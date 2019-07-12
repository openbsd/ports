# $OpenBSD: Makefile,v 1.9 2019/07/12 20:46:12 sthen Exp $

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

# SIL OFL 1.1
PERMIT_PACKAGE=	Yes

MODULES=		font
FONTTYPES=		otf

NO_BUILD=		Yes
NO_TEST=		Yes

pre-install:
	cp ${FULLDISTDIR}/${DISTFILES} ${WRKSRC}

.include <bsd.port.mk>
