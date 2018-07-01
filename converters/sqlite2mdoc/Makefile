# $OpenBSD: Makefile,v 1.3 2018/07/01 02:08:21 jturner Exp $

COMMENT =		extract C reference manpages from SQLite3 header file

DISTNAME =		sqlite2mdoc-0.1.4

MAINTAINER =		Kristaps Dzonsons <kristaps@bsd.lv>

CATEGORIES =		converters databases
HOMEPAGE =		https://github.com/kristapsdz/sqlite2mdoc
MASTER_SITES =		https://kristaps.bsd.lv/sqlite2mdoc/snapshots/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =		c

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	PREFIX="${PREFIX}"

ALL_TARGET =		sqlite2mdoc

NO_TEST =		Yes

.include <bsd.port.mk>
