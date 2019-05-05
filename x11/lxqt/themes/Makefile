# $OpenBSD: Makefile,v 1.3 2019/05/05 17:09:08 naddy Exp $

COMMENT =	themes, graphics and icons for LXQt

VERSION =	0.13.0

NAME =		lxqt-themes
DISTNAME =	${NAME}-${VERSION}
REVISION =	1

LIB_DEPENDS +=		x11/lxqt/liblxqt

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		x11/gtk+3,-guic

.include <bsd.port.mk>
