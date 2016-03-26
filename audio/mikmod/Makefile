# $OpenBSD: Makefile,v 1.8 2016/03/26 16:08:30 awolk Exp $

COMMENT =	module audio player
DISTNAME =	mikmod-3.2.7
CATEGORIES =	audio

MAINTAINER =	Frederic Cambus <fred@statdns.com>

HOMEPAGE =	http://mikmod.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m mikmod ncurses pthread sndio

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mikmod/}

CONFIGURE_STYLE = gnu

LIB_DEPENDS =	audio/libmikmod

RUN_DEPENDS =	archivers/bzip2 \
		archivers/unzip

.include <bsd.port.mk>
