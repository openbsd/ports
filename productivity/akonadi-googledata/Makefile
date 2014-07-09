# $OpenBSD: Makefile,v 1.1.1.1 2014/07/09 10:52:54 zhuk Exp $

CATEGORIES =	productivity
COMMENT =	Google contacts/calendar connector for Akonadi
DISTNAME =	akonadi-googledata-1.2.0

HOMEPAGE =	https://code.google.com/p/libgcal/

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/akonadi-kde ${KDE4LIB}/kabc ${KDE4LIB}/kcal
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kresources
WANTLIB += gcal

MASTER_SITES =	https://libgcal.googlecode.com/files/
EXTRACT_SUFX =	.tar.bz2

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =          Yes

MODULES =	x11/kde4 devel/gettext
MODKDE4_USE =	pim

BUILD_DEPENDS =	devel/boost \
		textproc/libxslt

LIB_DEPENDS = 	productivity/libgcal

.include <bsd.port.mk>
