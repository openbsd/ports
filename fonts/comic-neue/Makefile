# $OpenBSD: Makefile,v 1.11 2020/05/25 05:58:50 bentley Exp $

COMMENT =		replacement for Comic Sans font

TYPEFACE =		comic-neue
VERSION =		2.5
DISTNAME =		${TYPEFACE}-${VERSION}

CATEGORIES =		fonts

HOMEPAGE =		http://comicneue.com/

MAINTAINER =		Tristan Le Guern <tleguern@bouledef.eu>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://comicneue.com/
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/fonts/comic-neue
	${INSTALL_DATA} ${WRKSRC}/{TTF,OTF}/*/*.?tf \
		${PREFIX}/share/fonts/comic-neue

.include <bsd.port.mk>
