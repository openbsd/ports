# $OpenBSD: Makefile,v 1.21 2013/03/10 22:55:03 espie Exp $

COMMENT =	free library for decoding ATSC A/52 streams, aka AC-3

V =		0.7.5
# 0.7.5-cvs
DISTNAME =	a52dec-snapshot
PKGNAME =	liba52-${V}
REVISION =	0
CATEGORIES =	audio
MASTER_SITES =	http://comstyle.com/source/

SHARED_LIBS =	a52	1.0

HOMEPAGE =	http://liba52.sourceforge.net/

MAINTAINER =	Marc Espie <espie@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m ossaudio

WRKDIST =	${WRKDIR}/a52dec-${V}-cvs

USE_LIBTOOL =	Yes
SEPARATE_BUILD = Yes
CONFIGURE_STYLE = autoconf
AUTOCONF_VERSION = 2.59
CONFIGURE_ARGS += ${CONFIGURE_SHARED}
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/autotools

.include <bsd.port.mk>
