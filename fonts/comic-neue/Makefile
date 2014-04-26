# $OpenBSD: Makefile,v 1.2 2014/04/26 09:21:31 ajacoutot Exp $

COMMENT =		replacement for Comic Sans font

DISTNAME =		comic-neue-1.1
REVISION =		0

CATEGORIES =		fonts

HOMEPAGE =		http://comicneue.com/

MAINTAINER =		Tristan Le Guern <tleguern@bouledef.eu>

# CC0 (public domain)
# http://creativecommons.org/publicdomain/zero/1.0/
PERMIT_PACKAGE_CDROM =		Yes

MASTER_SITES =		${HOMEPAGE}
EXTRACT_SUFX =		.zip

NO_BUILD =		Yes

FONTDIR =		${PREFIX}/lib/X11/fonts/comic-neue
FCDIR =			${PREFIX}/share/comic-neue

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR} ${FCDIR}
	${INSTALL_DATA} ${WRKSRC}/*ttf ${FONTDIR}
	${INSTALL_DATA} ${FILESDIR}/30-comic-sans-aliases.conf ${FCDIR}

.include <bsd.port.mk>
