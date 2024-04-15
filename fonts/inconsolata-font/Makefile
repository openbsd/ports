COMMENT =		monospace font designed for coders (old version)

MODFONT_FAMILY=		inconsolata
DISTNAME=		Inconsolata
PKGNAME=		${MODFONT_FAMILY}-font-0.1
EPOCH =			0
CATEGORIES=		fonts x11

HOMEPAGE =		https://www.levien.com/type/myfonts/inconsolata.html

SITES=			https://distfiles.sigtrap.nl/
EXTRACT_SUFX=		.otf
EXTRACT_ONLY=

# SIL OFL 1.1
PERMIT_PACKAGE=	Yes

MODULES=		font
MODFONT_TYPES=		otf

NO_BUILD=		Yes
NO_TEST=		Yes

pre-install:
	cp ${FULLDISTDIR}/${DISTFILES} ${WRKSRC}

.include <bsd.port.mk>
