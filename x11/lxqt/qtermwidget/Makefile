# $OpenBSD: Makefile,v 1.3 2019/05/05 17:09:08 naddy Exp $

COMMENT =	the terminal widget for QTerminal

VERSION =	0.9.0

NAME =		qtermwidget
DISTNAME =	${NAME}-${VERSION}
REVISION =	1

SHARED_LIBS +=  qtermwidget5              0.0 # 0.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		x11/lxqt/l10n,-qtermwidget

CONFIGURE_ARGS +=	-DPULL_TRANSLATIONS:BOOL=OFF

.include <bsd.port.mk>
