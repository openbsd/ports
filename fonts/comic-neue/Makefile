COMMENT =		replacement for Comic Sans font

MODFONT_FAMILY =	comic-neue
MODFONT_VERSION =	2.51
REVISION =		0

DISTNAME =		${MODFONT_FAMILY}-${MODFONT_VERSION}

MODULES =		font

HOMEPAGE =		http://comicneue.com/

MAINTAINER =		Tristan Le Guern <tleguern@bouledef.eu>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

SITES =			https://comicneue.com/

NO_BUILD =		Yes
NO_TEST =		Yes

FCDIR =			${PREFIX}/share/comic-neue

MODFONT_FONTFILES =	*/*/*.ttf */*/*.otf

post-install:
	${INSTALL_DATA_DIR} ${FCDIR}
	${INSTALL_DATA} ${FILESDIR}/30-comic-sans-aliases.conf ${FCDIR}

.include <bsd.port.mk>
