# $OpenBSD: Makefile,v 1.1.1.1 2018/09/14 15:17:27 rsadowski Exp $

COMMENT =	themes, graphics and icons for LXQt

VERSION =	0.13.0

NAME =		lxqt-themes
DISTNAME =	${NAME}-${VERSION}

LIB_DEPENDS +=		x11/lxqt/liblxqt

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		x11/gtk+3,-guic

.include <bsd.port.mk>
