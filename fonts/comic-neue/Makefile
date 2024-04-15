COMMENT =		replacement for Comic Sans font

MODFONT_FAMILY =	comic-neue
MODFONT_VERSION =	2.51
DISTNAME =		${MODFONT_FAMILY}-${MODFONT_VERSION}

CATEGORIES =		fonts

HOMEPAGE =		http://comicneue.com/

MAINTAINER =		Tristan Le Guern <tleguern@bouledef.eu>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

SITES =			https://comicneue.com/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*
FCDIR =			${PREFIX}/share/comic-neue

do-install:
	${INSTALL_DATA_DIR} ${FCDIR}
	${INSTALL_DATA} ${FILESDIR}/30-comic-sans-aliases.conf ${FCDIR}
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/comic-neue
	${INSTALL_DATA} ${WRKSRC}/{TTF,OTF}/*/*.?tf \
		${PREFIX}/share/fonts/comic-neue

.include <bsd.port.mk>
