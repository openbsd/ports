# $OpenBSD: Makefile,v 1.8 2017/11/21 00:13:03 naddy Exp $

CATEGORIES =	productivity
COMMENT =	Google contacts/calendar connector for Akonadi
DISTNAME =	akonadi-googledata-1.2.0
REVISION =	2

HOMEPAGE =	https://code.google.com/p/libgcal/

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/akonadi-kde ${KDE4LIB}/kabc ${KDE4LIB}/kcal
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kresources
WANTLIB += gcal iconv intl
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =	${MASTER_SITE_GOOGLECODE:=libgcal/}
EXTRACT_SUFX =	.tar.bz2

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =          Yes

MODULES =		x11/kde4
MODKDE4_USE =		pim

BUILD_DEPENDS =	devel/boost \
		devel/gettext-tools \
		textproc/libxslt

LIB_DEPENDS = 	productivity/libgcal

.include <bsd.port.mk>
