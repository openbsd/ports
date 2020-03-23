# $OpenBSD: Makefile,v 1.29 2020/03/23 18:01:13 rsadowski Exp $

COMMENT =	guitar tab editor

GH_ACCOUNT =	pavelliavonau
GH_PROJECT =	kguitar
GH_COMMIT =	a7c73491ef236134de55cbdcfc9f8cafa2a76ae1

# commit date YYYYMMDD
DISTNAME =	${GH_PROJECT}-20170809
REVISION =	6

# override kf5
EXTRACT_SUFX =	.tar.gz

CATEGORIES =	multimedia

HOMEPAGE =	http://kguitar.sourceforge.net/

MAINTAINER =	Pascal Stumpf <pascal@stumpf.co>

# GPLv2+; for MusicXML copyright see licenseMusicXML.html
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Auth KF5AuthCore KF5Codecs KF5Completion
WANTLIB += KF5ConfigCore KF5ConfigGui KF5ConfigWidgets KF5CoreAddons
WANTLIB += KF5I18n KF5JobWidgets KF5KIOCore KF5KIOWidgets KF5Parts
WANTLIB += KF5Service KF5SonnetUi KF5TextWidgets KF5WidgetsAddons
WANTLIB += KF5XmlGui Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5PrintSupport Qt5Widgets Qt5Xml c m

MODULES =	devel/cmake \
		devel/kf5

RUN_DEPENDS +=	devel/desktop-file-utils \
		devel/gettext,-runtime \
		x11/gtk+3,-guic

# kdelibs4support includes kdex.dtd which is necessary to generate docs
BUILD_DEPENDS +=	devel/kf5/kdoctools \
			devel/kf5/kdelibs4support \
			devel/gettext,-tools

LIB_DEPENDS =		devel/kf5/kauth \
			devel/kf5/kcodecs \
			devel/kf5/kcompletion \
			devel/kf5/kconfig \
			devel/kf5/kcoreaddons \
			devel/kf5/kconfigwidgets \
			devel/kf5/ki18n \
			devel/kf5/kio \
			devel/kf5/ki18n \
			devel/kf5/kparts \
			devel/kf5/kservice \
			devel/kf5/kxmlgui \
			devel/kf5/sonnet

.include <bsd.port.mk>
