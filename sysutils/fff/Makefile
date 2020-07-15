# $OpenBSD: Makefile,v 1.1.1.1 2020/07/15 15:36:32 bket Exp $

COMMENT =	simple and fast file manager

GH_ACCOUNT =	dylanaraps
GH_PROJECT =	fff
GH_TAGNAME =	2.1

CATEGORIES =	sysutils

MAINTAINER =		Dimitri Karamazov <deserter666@danwin1210.me>

# MIT
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		converters/libiconv \
			devel/gettext,-runtime \
			devel/xdg-utils \
			shells/bash

FAKE_FLAGS =		DESTDIR= MANDIR="${DESTDIR}${PREFIX}/man"

NO_BUILD =		Yes
NO_TEST =		Yes

.include <bsd.port.mk>
