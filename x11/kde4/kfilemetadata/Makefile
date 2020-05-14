# $OpenBSD: Makefile,v 1.6 2020/05/14 19:16:25 rsadowski Exp $

COMMENT =	file metadata extraction library for KDE
DISTNAME =	kfilemetadata-${MODKDE4_VERSION}
REVISION =	3

CATEGORIES =	sysutils

HOMEPAGE =	https://projects.kde.org/projects/kde/kdelibs/kfilemetadata

SHARED_LIBS =	kfilemetadata		1.0

WANTLIB += ${COMPILER_LIBCXX} lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml avcodec avformat avutil epub exiv2
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio m tag

MODKDE4_USE =	libs

CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_QMobipocket=True \
			-DCMAKE_DISABLE_FIND_PACKAGE_PopplerQt4=True

LIB_DEPENDS =	audio/taglib \
		graphics/exiv2 \
		graphics/ffmpeg \
		textproc/ebook-tools

.include <bsd.port.mk>
