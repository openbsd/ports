# $OpenBSD: Makefile,v 1.28 2019/11/13 11:00:21 espie Exp $

COMMENT =	free library for decoding ATSC A/52 streams, aka AC-3

V =		0.7.5
# 0.7.5-cvs
DISTNAME =	a52dec-snapshot
PKGNAME =	liba52-${V}
REVISION =	3
CATEGORIES =	audio
MASTER_SITES =	https://comstyle.com/source/

SHARED_LIBS =	a52	1.0

HOMEPAGE =	http://liba52.sourceforge.net/

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	c m sndio

WRKDIST =	${WRKDIR}/a52dec-${V}-cvs

SEPARATE_BUILD = Yes
CONFIGURE_STYLE = autoconf
AUTOCONF_VERSION = 2.59
CONFIGURE_ARGS += --disable-oss
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/autotools

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-extract:
	@cp ${FILESDIR}/audio_out_sndio.c ${WRKSRC}/libao

.include <bsd.port.mk>
