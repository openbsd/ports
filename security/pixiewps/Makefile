# $OpenBSD: Makefile,v 1.1.1.1 2019/04/16 20:38:52 sebastia Exp $

COMMENT =	offline bruteforce of WPS pins

GH_ACCOUNT =	wiire-a
GH_PROJECT =	pixiewps
GH_TAGNAME =	v1.4.2

CATEGORIES =	security net

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c pthread

USE_GMAKE =	Yes
MAKE_FLAGS =	CFLAGS="${CFLAGS}" \
		PREFIX=${PREFIX} \
		MANDIR=${PREFIX}/man

.include <bsd.port.mk>
