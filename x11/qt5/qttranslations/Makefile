# $OpenBSD: Makefile,v 1.1.1.1 2016/12/25 14:13:18 zhuk Exp $

QT5NAME =	QtTranslations
COMMENT =	unofficial Qt5 translations

PKG_ARCH =	*
WANTLIB- =
LIB_DEPENDS- =
RUN_DEPENDS =	x11/qt5/qtbase>=${QT5_VERSION},<${QT5_NEXT_VERSION}

MODQT5_USE_GCC4_MODULE =	No
NO_CCACHE =			Yes

.include <bsd.port.mk>
