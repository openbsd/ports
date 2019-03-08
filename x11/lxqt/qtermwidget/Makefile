# $OpenBSD: Makefile,v 1.2 2019/03/08 20:00:48 cwen Exp $

COMMENT =	the terminal widget for QTerminal

VERSION =	0.9.0

NAME =		qtermwidget
DISTNAME =	${NAME}-${VERSION}
REVISION =	0

SHARED_LIBS +=  qtermwidget5              0.0 # 0.9

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		x11/lxqt/l10n,-qtermwidget

CONFIGURE_ARGS +=	-DPULL_TRANSLATIONS:BOOL=OFF

.include <bsd.port.mk>
