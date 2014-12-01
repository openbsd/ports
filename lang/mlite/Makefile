# $OpenBSD: Makefile,v 1.2 2014/12/01 18:15:34 jturner Exp $

COMMENT =		lightweight inhabitant of the ML family of languages

DISTNAME =		mlite-20141201
CATEGORIES =		lang

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://t3x.org/mlite/index.html
MASTER_SITES =		http://t3x.org/mlite/ \
			http://calminferno.net/dl/
EXTRACT_SUFX =		.tgz

# PD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MAKE_FLAGS =		CC="${CC} ${CFLAGS}"
FAKE_FLAGS =		PREFIX="${WRKINST}${PREFIX}"

ALL_TARGET =		mlite

.include <bsd.port.mk>
