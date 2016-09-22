# $OpenBSD: Makefile,v 1.9 2016/09/22 12:57:17 fcambus Exp $

COMMENT =	module audio player
DISTNAME =	mikmod-3.2.7
REVISION =	0

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
