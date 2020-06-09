# $OpenBSD: Makefile,v 1.12 2020/06/09 03:40:45 bentley Exp $

COMMENT =		monospace font designed for coders (old version)

TYPEFACE=		inconsolata
DISTNAME=		Inconsolata
PKGNAME=		${TYPEFACE}-font-0.1
EPOCH =			0
CATEGORIES=		fonts x11

HOMEPAGE =		https://www.levien.com/type/myfonts/inconsolata.html

MASTER_SITES=		https://distfiles.sigtrap.nl/
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
