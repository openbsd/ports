# $OpenBSD: Makefile,v 1.10 2017/04/10 11:46:21 sthen Exp $

V =		4.1.16
COMMENT =	query for a selection and print to stdout (select operation)
DISTNAME =	slop-${V}
CATEGORIES =	graphics x11
REVISION =	0

GH_ACCOUNT =	naelstrof
GH_PROJECT =	slop
GH_TAGNAME =	v${V}

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext c m ${LIBCXX}

MODULES =	devel/cmake

NO_TEST =	Yes

.include <bsd.port.mk>
