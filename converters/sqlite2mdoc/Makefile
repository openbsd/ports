# $OpenBSD: Makefile,v 1.1.1.1 2018/06/29 17:16:14 landry Exp $

COMMENT =		extract C reference manpages from SQLite3 header file

DISTNAME =		sqlite2mdoc-0.1.2

MAINTAINER =		Kristaps Dzonsons <kristaps@bsd.lv>

CATEGORIES =		converters databases
HOMEPAGE =		https://github.com/kristapsdz/sqlite2mdoc
MASTER_SITES =		https://kristaps.bsd.lv/sqlite2mdoc/snapshots/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	PREFIX="${PREFIX}"

ALL_TARGET =		sqlite2mdoc

NO_TEST =		Yes

.include <bsd.port.mk>
