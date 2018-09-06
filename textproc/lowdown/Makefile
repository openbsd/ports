# $OpenBSD: Makefile,v 1.14 2018/09/06 16:13:01 anton Exp $

COMMENT =	simple markdown translator
DISTNAME =	lowdown-0.4.1
CATEGORIES =	textproc

HOMEPAGE =	https://kristaps.bsd.lv/lowdown/
MAINTAINER =	Anton Lindqvist <anton@openbsd.org>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://kristaps.bsd.lv/lowdown/snapshots/

# uses pledge()
WANTLIB +=	c m

CONFIGURE_STYLE =	simple
CONFIGURE_ENV =		PREFIX="${PREFIX}"

ALL_TARGET =	lowdown

NO_TEST =	Yes

.include <bsd.port.mk>
