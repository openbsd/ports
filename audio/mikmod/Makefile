COMMENT =	module audio player
DISTNAME =	mikmod-3.2.9

CATEGORIES =	audio

HOMEPAGE =	https://mikmod.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c mikmod curses pthread sndio

SITES =		${SITE_SOURCEFORGE:=mikmod/}

CONFIGURE_STYLE = gnu

LIB_DEPENDS =	audio/libmikmod

RUN_DEPENDS =	archivers/bzip2 \
		archivers/unzip

.include <bsd.port.mk>
