# $OpenBSD: Makefile,v 1.1.1.1 2018/08/18 18:14:54 rsadowski Exp $

COMMENT =	library for handling mail messages and newsgroup articles
DISTNAME =	kmime-${VERSION}
CATEGORIES =	mail devel

KDE5 =		Yes

SHARED_LIBS +=  KF5Mime                   0.0 # 5.5

WANTLIB += ${COMPILER_LIBCXX} KF5Codecs KF5I18n Qt5Core m

BUILD_DEPENDS +=devel/gettext-tools

LIB_DEPENDS +=	devel/kf5/kcodecs \
		devel/kf5/ki18n

.include <bsd.port.mk>
