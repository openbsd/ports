# $OpenBSD: Makefile,v 1.4 2019/11/05 10:18:54 rsadowski Exp $

QT5NAME =	QtTranslations
COMMENT =	unofficial Qt5 translations

PKG_ARCH =	*
WANTLIB- =
LIB_DEPENDS- =
RUN_DEPENDS =	x11/qt5/qtbase>=${QT5_VERSION},<${QT5_NEXT_VERSION}

MODQT5_USE_CXX11 =		No
NO_CCACHE =			Yes

.include <bsd.port.mk>
