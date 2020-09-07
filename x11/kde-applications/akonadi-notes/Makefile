# $OpenBSD: Makefile,v 1.2 2020/09/07 14:49:11 rsadowski Exp $

COMMENT =	PIM Akonadi notes support library
DISTNAME =	akonadi-notes-${VERSION}
CATEGORIES =	devel mail

SHARED_LIBS +=  KF5AkonadiNotes       1.0 # 5.13.2

WANTLIB += ${COMPILER_LIBCXX} KF5I18n KF5Mime Qt5Core Qt5Xml m

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

BUILD_DEPENDS =	devel/kf5/kcodecs

LIB_DEPENDS =	devel/kf5/ki18n \
		x11/kde-applications/kmime

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
