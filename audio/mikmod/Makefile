COMMENT =	module audio player
DISTNAME =	mikmod-3.2.8
REVISION =	1

CATEGORIES =	audio

HOMEPAGE =	http://mikmod.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	c m mikmod curses pthread sndio

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mikmod/}

CONFIGURE_STYLE = gnu

LIB_DEPENDS =	audio/libmikmod

RUN_DEPENDS =	archivers/bzip2 \
		archivers/unzip

.include <bsd.port.mk>
