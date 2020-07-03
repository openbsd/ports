# $OpenBSD: Makefile,v 1.1.1.1 2020/07/03 23:45:00 bcallah Exp $

COMMENT =	calculator from elementary OS
PKGNAME =	${DISTNAME:S/^/elementary-/}

GH_PROJECT =	calculator
GH_TAGNAME =	1.5.5

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 granite gtk-3 m

MODULES =	devel/dconf

BUILD_DEPENDS =	devel/gettext,-tools \
		lang/vala

LIB_DEPENDS =	x11/elementary/granite

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
