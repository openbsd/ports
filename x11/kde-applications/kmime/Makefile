# $OpenBSD: Makefile,v 1.6 2020/09/07 14:49:21 rsadowski Exp $

COMMENT =	library for handling mail messages and newsgroup articles
DISTNAME =	kmime-${VERSION}
CATEGORIES =	mail devel

SHARED_LIBS +=  KF5Mime                   2.0 # 5.5

WANTLIB += ${COMPILER_LIBCXX} KF5Codecs KF5I18n Qt5Core m

MODKDE5_TRANSLATIONS = yes

MODULES +=	x11/kde-applications

LIB_DEPENDS +=	devel/kf5/kcodecs \
		devel/kf5/ki18n

.include <bsd.port.mk>
