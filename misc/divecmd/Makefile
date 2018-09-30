# $OpenBSD: Makefile,v 1.2 2018/09/30 13:05:17 schwarze Exp $

COMMENT =		download and process dive computer data

DISTNAME =		divecmd-0.1.3

CATEGORIES =		misc

HOMEPAGE =		https://kristaps.bsd.lv/divecmd

MAINTAINER =		Kristaps Dzonsons <kristaps@bsd.lv>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB += 		divecomputer expat m c

MASTER_SITES =		https://kristaps.bsd.lv/divecmd/snapshots/

LIB_DEPENDS =		misc/libdivecomputer

RUN_DEPENDS = 		graphics/grap \
			textproc/groff

CONFIGURE_STYLE =	simple

CONFIGURE_ARGS =	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

NO_TEST =		Yes

.include <bsd.port.mk>
