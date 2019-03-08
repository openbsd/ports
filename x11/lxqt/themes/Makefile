# $OpenBSD: Makefile,v 1.2 2019/03/08 20:00:48 cwen Exp $

COMMENT =	themes, graphics and icons for LXQt

VERSION =	0.13.0

NAME =		lxqt-themes
DISTNAME =	${NAME}-${VERSION}
REVISION =	0

LIB_DEPENDS +=		x11/lxqt/liblxqt

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		x11/gtk+3,-guic

.include <bsd.port.mk>
