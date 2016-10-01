# $OpenBSD: Makefile,v 1.5 2016/10/01 11:54:17 naddy Exp $

CATEGORIES =	productivity
COMMENT =	Google contacts/calendar connector for Akonadi
DISTNAME =	akonadi-googledata-1.2.0
REVISION =	0

HOMEPAGE =	https://code.google.com/p/libgcal/

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/akonadi-kde ${KDE4LIB}/kabc ${KDE4LIB}/kcal
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kresources
WANTLIB += gcal

MASTER_SITES =	${MASTER_SITE_GOOGLECODE:=libgcal/}
EXTRACT_SUFX =	.tar.bz2

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =          Yes

MODULES =		x11/kde4 devel/gettext
MODKDE4_USE =		pim

BUILD_DEPENDS =	devel/boost \
		textproc/libxslt

LIB_DEPENDS = 	productivity/libgcal

.include <bsd.port.mk>
