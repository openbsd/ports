# $OpenBSD: Makefile,v 1.3 2019/03/08 20:00:49 cwen Exp $

QT5NAME =	QtTranslations
COMMENT =	unofficial Qt5 translations
REVISION =	0

PKG_ARCH =	*
WANTLIB- =
LIB_DEPENDS- =
RUN_DEPENDS =	x11/qt5/qtbase>=${QT5_VERSION},<${QT5_NEXT_VERSION}

MODQT5_USE_CXX11 =		No
NO_CCACHE =			Yes

.include <bsd.port.mk>
