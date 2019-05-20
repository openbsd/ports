# $OpenBSD: Makefile,v 1.11 2019/05/20 20:52:31 sthen Exp $

COMMENT =	module audio player
DISTNAME =	mikmod-3.2.8
REVISION =	0

CATEGORIES =	audio

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

HOMEPAGE =	http://mikmod.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m mikmod curses pthread sndio

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mikmod/}

CONFIGURE_STYLE = gnu

LIB_DEPENDS =	audio/libmikmod

RUN_DEPENDS =	archivers/bzip2 \
		archivers/unzip

.include <bsd.port.mk>
