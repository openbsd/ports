# $OpenBSD: Makefile,v 1.10 2017/06/15 10:01:42 fcambus Exp $

COMMENT =	module audio player
DISTNAME =	mikmod-3.2.8

CATEGORIES =	audio

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

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
