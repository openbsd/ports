# $OpenBSD: Makefile,v 1.8 2015/05/23 16:34:40 czarkoff Exp $

V =		4.1.16
COMMENT =	query for a selection and print to stdout (select operation)
DISTNAME =	slop-${V}
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	slop
GH_TAGNAME =	v${V}

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext c m stdc++

MODULES =	devel/cmake

NO_TEST =	Yes

.include <bsd.port.mk>
