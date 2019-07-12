# $OpenBSD: Makefile,v 1.2 2019/07/12 20:49:09 sthen Exp $

COMMENT =	offline bruteforce of WPS pins

GH_ACCOUNT =	wiire-a
GH_PROJECT =	pixiewps
GH_TAGNAME =	v1.4.2

CATEGORIES =	security net

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

USE_GMAKE =	Yes
MAKE_FLAGS =	CFLAGS="${CFLAGS}" \
		PREFIX=${PREFIX} \
		MANDIR=${PREFIX}/man

.include <bsd.port.mk>
